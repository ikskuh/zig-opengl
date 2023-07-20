using System;
using System.IO;
using System.Xml;
using System.Xml.Serialization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;

class Program
{

  static int Main(string[] args)
  {
    if (args.Length < 1)
    {
      Console.Error.WriteLine("Usage: generator <registry> <result> <api_version> [<extension>] [<extension>] ...");
      return 1;
    }

    string registry_file = args[0];

    var serializer = new XmlSerializer(typeof(Registry));

    Registry registry;
    using (var sr = new StreamReader(registry_file))
    {
      registry = (Registry)serializer.Deserialize(sr);
    }

    if (args.Length == 1)
    {
      Console.WriteLine("Available features are:");
      foreach (var feat in registry.Features)
      {
        Console.WriteLine("- {0}", feat.Name);
      }
    }


    if (args.Length < 3)
    {
      Console.Error.WriteLine("Usage: generator <registry> <result> <api_version> [<extension>] [<extension>] ...");
      return 1;
    }

    string result_file = args[1];
    string api_version = args[2];
    string[] extensions = args.Skip(3).ToArray();
    string profile = "core"; //

    var target_feature = registry.Features.First(f => f.Name == api_version);

    var api = target_feature.API;

    var required_features = registry.Features
      .Where(f => f.API == target_feature.API)
      .Where(f => f.Number.CompareTo(target_feature.Number) <= 0)
      .OrderBy(f => f.Number)
      .ToArray();

    var wanted_extensions = registry.Extensions
      .Where(e => extensions.Contains(e.Name))
      .ToArray();

    if (wanted_extensions.Length != extensions.Length)
    {
      Console.Error.WriteLine("The following extensions could not be found:");
      foreach (var ext in extensions.Where(e => !wanted_extensions.Any(e2 => e2.Name == e)))
      {
        Console.Error.WriteLine("  {0}", ext);
      }
      return 1;
    }


    foreach (var ext in wanted_extensions)
    {
      if (!ext.IsCompatibleTo(target_feature))
      {
        Console.Error.WriteLine("{0} is not compatible to {1}", ext.Name, api_version);
        return 1;
      }
      if (ext.Removes != null)
      {
        Console.Error.WriteLine("{0} would remove features. This is not supported yet.", ext.Name);
        return 1;
      }

    }

    var final_feature_set = new HashSet<FeatureComponent>();

    foreach (var feat in required_features)
    {
      var empty = new FeatureComponent[0];

      foreach (var item in feat.GetRemovedComponents(api, profile))
      {
        final_feature_set.Remove(item);
      }

      foreach (var item in feat.GetRequiredComponents(api, profile))
      {
        final_feature_set.Add(item);
      }
    }

    var gl_set = ExtractedFeatureSet.Create(registry, final_feature_set);

    var gl_extensions = new List<Tuple<string, ExtractedFeatureSet>>();
    foreach (var ext in wanted_extensions)
    {
      var empty = new FeatureComponent[0];
      gl_extensions.Add(Tuple.Create(
          ext.Name,
          ExtractedFeatureSet.Create(registry, ext.GetRequiredComponents(api, profile))
      ));
    }

    Console.WriteLine("Final API has {0} commands and {1} enums types.",
      gl_set.commands.Count,
      gl_set.enums.Count
    );
    foreach (var ext in wanted_extensions)
    {
      Console.WriteLine("  {0}", ext.Name);
    }

    var all_commands = gl_set.commands.Concat(gl_extensions.SelectMany(c => c.Item2.commands));

    using (var stream = new StreamWriter(result_file, false, Encoding.UTF8))
    {
      stream.WriteLine("//");
      stream.WriteLine("// This code file is licenced under any of Public Domain, WTFPL or CC0.");
      stream.WriteLine("// There are no restrictions in the use of this file.");
      stream.WriteLine("//");
      stream.WriteLine("");
      stream.WriteLine("//");
      stream.WriteLine("// Generation parameters:");
      stream.WriteLine("// API:        {0}", api_version);
      stream.WriteLine("// Profile:    {0}", profile);
      stream.WriteLine("// Extensions: {0}", string.Join(", ", extensions));
      stream.WriteLine("//");
      stream.WriteLine("");
      stream.WriteLine("//");
      stream.WriteLine("// This file was generated with the following command line:");
      stream.WriteLine("// generator {0}", Environment.CommandLine); // string.Join(" ", args.Select(a => a.Contains(" ") ? "\"" + a + "\"" : a)));
      stream.WriteLine("//");
      stream.WriteLine("");
      stream.WriteLine("const std = @import(\"std\");");
      stream.WriteLine("const builtin = @import(\"builtin\");");
      stream.WriteLine("const log = std.log.scoped(.OpenGL);");
      stream.WriteLine();
      stream.WriteLine(preamble);
      stream.WriteLine();
      WriteConstants(stream, gl_set.enums);
      stream.WriteLine();
      WriteCommands(stream, gl_set.commands);

      stream.WriteLine("// Extensions:");
      stream.WriteLine();
      foreach (var ext in gl_extensions)
      {
        stream.WriteLine("pub const {0} = struct {{", ext.Item1);

        WriteConstants(stream, ext.Item2.enums);
        stream.WriteLine();
        WriteCommands(stream, ext.Item2.commands);
        stream.WriteLine();
        WriteLoader(stream, ext.Item2.commands);

        stream.WriteLine("};");
        stream.WriteLine();
      }

      stream.WriteLine("// Loader API:");
      WriteLoader(stream, gl_set.commands);

      stream.WriteLine();

      stream.WriteLine("const function_signatures = struct {");
      foreach (var cmd in all_commands)
      {
        stream.WriteLine("    const {0} = {1};", cmd.Prototype.Name, cmd.GetSignature(false));
      }
      stream.WriteLine("};");

      stream.WriteLine();

      stream.WriteLine("const function_pointers = struct {");
      foreach (var cmd in all_commands)
      {
        stream.WriteLine("    var {0}: FnPtr(function_signatures.{0}) = undefined;", cmd.Prototype.Name);
      }
      stream.WriteLine("};");

      stream.WriteLine();

      stream.WriteLine("test {");
      stream.WriteLine("    _ = load;");
      stream.WriteLine("    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!");
      stream.WriteLine("    std.testing.refAllDecls(@This());");
      stream.WriteLine("}");
    }

    return 0;
  }

  class ExtractedFeatureSet
  {
    public List<Command> commands = new List<Command>();
    public List<Enum> enums = new List<Enum>();

    public static ExtractedFeatureSet Create(Registry registry, IEnumerable<FeatureComponent> src_set)
    {
      var set = new ExtractedFeatureSet();
      foreach (var feature in src_set)
      {
        if (feature is CommandFeature cmd)
        {
          set.commands.Add(registry.Commands.SelectMany(c => c.Items).Single(c => c.Prototype.Name == cmd.Name));
        }
        else if (feature is EnumFeature en)
        {
          var empty = new Enum[0];
          set.enums.Add(registry.Enums.SelectMany(e => e.Items ?? empty).Single(e => e.Name == en.Name));
        }
      }
      return set;
    }
  }

  public static void WriteConstants(TextWriter stream, IEnumerable<Enum> enums)
  {
    foreach (var item in enums)
    {
      stream.WriteLine("pub const {0} = {1};", MakeZigIdent(RemovePrefix(item.Name)), item.Value);
    }
  }

  public static void WriteCommands(TextWriter stream, IEnumerable<Command> commands)
  {
    foreach (var cmd in commands)
    {
      stream.WriteLine();
      stream.Write("pub ");
      stream.Write(cmd.GetSignature(true));
      stream.WriteLine(" {");

      stream.Write("    return @call(.always_tail, function_pointers.{0}, .{{", cmd.Prototype.Name);
      if (cmd.Parameters != null)
      {
        int i = 0;
        foreach (var param in cmd.Parameters)
        {
          if (i > 0)
            stream.Write(", ");
          stream.Write("_{0}", param.Name);
          i += 1;
        }
      }
      stream.WriteLine("});");

      stream.WriteLine("}");
    }
  }

  public static void WriteLoader(TextWriter stream, IEnumerable<Command> commands)
  {
    stream.WriteLine("pub fn load(load_ctx: anytype, get_proc_address: fn(@TypeOf(load_ctx), [:0]const u8) ?FunctionPointer) !void {");
    stream.WriteLine("    var success = true;");
    foreach (var cmd in commands)
    {
      stream.WriteLine("    if(get_proc_address(load_ctx, \"{0}\")) |proc| {{", cmd.Prototype.Name);
      stream.WriteLine("        function_pointers.{0} = @ptrCast(proc);", cmd.Prototype.Name);
      stream.WriteLine("    } else {");
      stream.WriteLine("        log.err(\"entry point {0} not found!\", .{{}});", cmd.Prototype.Name);
      stream.WriteLine("        success = false;");
      stream.WriteLine("    }");
    }
    stream.WriteLine("    if(!success)");
    stream.WriteLine("        return error.EntryPointNotFound;");
    stream.WriteLine("}");
  }

  public static string MakeZigIdent(string text)
  {
    var type_pat = new Regex(@"(f|u|i)\d+");

    if (type_pat.IsMatch(text))
      return "_" + text;

    switch (text)
    {
      case "type": return "_type";
      default:
        if (!char.IsLetter(text[0]))
          return "@\"" + text + "\"";
        else
          return text;
    }
  }

  public static string RemovePrefix(string text)
  {
    if (text.StartsWith("gl"))
      return text.Substring(2, 1).ToLower() + text.Substring(3);
    else if (text.StartsWith("GL_"))
      return text.Substring(3);
    else
      return text;
  }

  public static string TranslateC(string type)
  {
    type = type.Trim();

    if (type == "void")
      return "void";

    // this is left-const bullshittery, let's reverse it
    if (type.StartsWith("const"))
    {
      var rest = type.Substring(5).Trim();
      var index = rest.IndexOfAny(new char[] { '*', ' ' });
      if (index >= 0)
      {
        type = rest.Substring(0, index) + " const" + rest.Substring(index);
      }
    }

    var tokens = new List<string>();

    var pattern = new Regex("(\\w+)|\\*");
    foreach (Match pat in pattern.Matches(type))
    {
      tokens.Add(pat.Value);
    }

    var result = "";
    int i = tokens.Count;
    while (i > 0)
    {
      i -= 1;
      var tok = tokens[i];

      if (tok == "*")
      {
        if ((i > 0 && tokens[i - 1] == "void") || (i > 1 && tokens[i - 2] == "void"))
        {
          result += "?*";
        }
        else
        {
          result += "[*c]";
        }
      }
      else if (tok == "const")
        result += "const ";
      else
      {
        switch (tok)
        {
          case "void": result += "anyopaque"; break;
          case "int": result += "c_int"; break;
          case "short": result += "c_short"; break;
          case "long": result += "c_long"; break;
          default:
            result += tok;
            break;
        }
      }
    }
    if (result == "[*c]const GLubyte")
    {
      // assume a string:
      return "?[*:0]const GLubyte";
    }
    return result;
  }

  const string preamble =
  @"pub const FunctionPointer: type = blk: {
    const BaseFunc = fn (u32) callconv(.C) u32;
    const SpecializedFnPtr = FnPtr(BaseFunc);
    const fnptr_type = @typeInfo(SpecializedFnPtr);
    var generic_type = fnptr_type;
    std.debug.assert(generic_type.Pointer.size == .One);
    generic_type.Pointer.child = anyopaque;
    break :blk @Type(generic_type);
};

pub const GLenum = c_uint;
pub const GLboolean = u8;
pub const GLbitfield = c_uint;
pub const GLbyte = i8;
pub const GLubyte = u8;
pub const GLshort = i16;
pub const GLushort = u16;
pub const GLint = c_int;
pub const GLuint = c_uint;
pub const GLclampx = i32;
pub const GLsizei = c_int;
pub const GLfloat = f32;
pub const GLclampf = f32;
pub const GLdouble = f64;
pub const GLclampd = f64;
pub const GLeglClientBufferEXT = void;
pub const GLeglImageOES = void;
pub const GLchar = u8;
pub const GLcharARB = u8;

pub const GLhandleARB = if (builtin.os.tag == .macos) *anyopaque else c_uint;

pub const GLhalf = u16;
pub const GLhalfARB = u16;
pub const GLfixed = i32;
pub const GLintptr = usize;
pub const GLintptrARB = usize;
pub const GLsizeiptr = isize;
pub const GLsizeiptrARB = isize;
pub const GLint64 = i64;
pub const GLint64EXT = i64;
pub const GLuint64 = u64;
pub const GLuint64EXT = u64;

pub const GLsync = *opaque {};

pub const _cl_context = opaque {};
pub const _cl_event = opaque {};

pub const GLDEBUGPROC = FnPtr(fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);
pub const GLDEBUGPROCARB = FnPtr(fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);
pub const GLDEBUGPROCKHR = FnPtr(fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);

pub const GLDEBUGPROCAMD = FnPtr(fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void);

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = *const fn () callconv(.C) void;

fn FnPtr(comptime Fn: type) type {
    return if (@import(""builtin"").zig_backend != .stage1)
        *const Fn
    else
        Fn;
}
";
}

[XmlRoot("registry")]
public class Registry
{
  [XmlElement("comment")]
  public string Comment { get; set; }

  [XmlArray("types")]
  [XmlArrayItem("type")]
  public GLType[] Types { get; set; }

  [XmlArray("groups")]
  [XmlArrayItem("group")]
  public Group[] Groups { get; set; }

  [XmlElement("enums")]
  public EnumSet[] Enums { get; set; }

  [XmlElement("commands")]
  public CommandSet[] Commands { get; set; }

  [XmlElement("feature")]
  public Feature[] Features { get; set; }

  [XmlArray("extensions")]
  [XmlArrayItem("extension")]
  public Feature[] Extensions { get; set; }
}

public class GLType
{
  [XmlElement("name")]
  public string Name { get; set; }
}

public class Group
{
  [XmlAttribute("name")]
  public string Name { get; set; }

  [XmlElement("enum")]
  public Enum[] Items { get; set; }
}

public class Enum
{
  [XmlAttribute("name")]
  public string Name { get; set; }

  [XmlAttribute("value")]
  public string Value { get; set; }
}

public class EnumSet
{
  [XmlAttribute("namespace")]
  public string Namespace { get; set; }

  [XmlAttribute("group")]
  public string Group { get; set; }

  [XmlAttribute("type")]
  public string Type { get; set; }

  [XmlAttribute("comment")]
  public string Comment { get; set; }

  [XmlElement("enum")]
  public Enum[] Items { get; set; }

}

public class CommandSet
{
  [XmlAttribute("namespace")]
  public string Namespace { get; set; }

  [XmlElement("command")]
  public Command[] Items { get; set; }
}

public class Command
{
  [XmlElement("proto")]
  public Parameter Prototype { get; set; }

  [XmlElement("param")]
  public Parameter[] Parameters { get; set; }

  public string GetSignature(bool includeName)
  {
    var stream = new StringWriter();

    var full_signature = Prototype.FullText;
    var return_type = "void";
    {
      var index = full_signature.LastIndexOf(" ");
      if (index >= 0)
      {
        return_type = full_signature.Substring(0, index).Trim();
      }
    }

    if (includeName)
      stream.Write("fn {0}(", Program.RemovePrefix(Prototype.Name));
    else
      stream.Write("fn(");
    if (Parameters != null)
    {
      int count = 0;
      foreach (var param in Parameters)
      {
        var name = param.Name;
        var type = param.TranslatedType;

        if (count > 0)
          stream.Write(", ");

        stream.Write("_{0}: {1}", name, type);

        count += 1;
      }
    }
    stream.Write(") callconv(.C) ");

    stream.Write(Program.TranslateC(return_type));

    return stream.ToString();
  }
}

public class Parameter
{
  [XmlAttribute("group")]
  public string Group { get; set; }


  [XmlText(typeof(string))]
  [XmlAnyElement]
  public object[] Items { get; set; }

  [XmlIgnore]// [XmlElement("ptype")]
  public string Type => Items.OfType<XmlElement>().SingleOrDefault(e => e.Name == "ptype")?.InnerText;

  [XmlIgnore]// [XmlElement("name")]
  public string Name => Items.OfType<XmlElement>().SingleOrDefault(e => e.Name == "name")?.InnerText;

  public string TranslatedType
  {
    get
    {
      var type = Type ?? "";
      var full_text = FullText;
      var index = full_text.LastIndexOf(' ');
      if (index >= 0)
      {
        type = full_text.Substring(0, index);
      }
      return Program.TranslateC(type);
    }
  }

  public string FullText => string.Join<string>(" ", Items.Select(x =>
  {
    if (x is XmlElement e)
      return e.InnerText;
    else
      return x.ToString();
  }));
}

public class Feature
{
  [XmlAttribute("name")]
  public string Name { get; set; }

  [XmlAttribute("api")]
  public string API { get; set; }

  [XmlAttribute("number")]
  public string Number { get; set; }

  [XmlAttribute("supported")]
  public string Supported { get; set; }

  [XmlElement("require")]
  public FeatureSetList[] Requires { get; set; }

  [XmlElement("remove")]
  public FeatureSetList[] Removes { get; set; }

  public IEnumerable<FeatureComponent> GetRequiredComponents(string api, string profile) => Filter(api, profile, Requires);

  public IEnumerable<FeatureComponent> GetRemovedComponents(string api, string profile) => Filter(api, profile, Removes);

  IEnumerable<FeatureComponent> Filter(string api, string profile, IEnumerable<FeatureSetList> input)
  {
    if (input == null)
      return new FeatureComponent[0];
    return input.Where(f => f.Items != null).Where(f => f.HasAPI(api) && f.HasProfile(profile)).SelectMany(f => f.Items);
  }

  public bool IsCompatibleTo(Feature other)
  {
    return (Supported ?? "").Split('|').Contains(other.API);
  }
}

public class FeatureSetList
{
  [XmlAttribute("comment")]
  public string Comment { get; set; }

  [XmlAttribute("api")]
  public string Api { get; set; }

  [XmlAttribute("profile")]
  public string Profile { get; set; }

  [XmlElement("enum", typeof(EnumFeature))]
  [XmlElement("type", typeof(TypeFeature))]
  [XmlElement("command", typeof(CommandFeature))]
  public FeatureComponent[] Items { get; set; }

  public bool HasAPI(string wanted_api)
  {
    if (wanted_api == null)
      return true;
    var this_api = Api?.ToLower();
    if (this_api == null)
      return true; // no restrictions
    else
      return this_api == wanted_api;
  }

  public bool HasProfile(string wanted_profile)
  {
    if (wanted_profile == null)
      return true;
    var this_profile = Profile?.ToLower() ?? "common";
    if (this_profile == "common")
      return true;
    else
      return this_profile == wanted_profile;
  }
}

public abstract class FeatureComponent
{
  [XmlAttribute("name")]
  public string Name { get; set; }

  public override int GetHashCode() => Name.GetHashCode();
}

public sealed class EnumFeature : FeatureComponent
{
  public override int GetHashCode() => Name.GetHashCode();
  public override bool Equals(object obj)
  {
    if (obj is EnumFeature other)
      return other.Name == this.Name;
    else
      return false;
  }
}

public sealed class TypeFeature : FeatureComponent
{
  public override int GetHashCode() => Name.GetHashCode();
  public override bool Equals(object obj)
  {
    if (obj is TypeFeature other)
      return other.Name == this.Name;
    else
      return false;
  }
}

public sealed class CommandFeature : FeatureComponent
{
  public override int GetHashCode() => Name.GetHashCode();

  public override bool Equals(object obj)
  {
    if (obj is CommandFeature other)
      return other.Name == this.Name;
    else
      return false;
  }
}
