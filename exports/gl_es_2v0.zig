const std = @import("std");
const log = std.log.scoped(.OpenGL);

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

pub const GLhandleARB = if (std.builtin.os.tag == .macos) *c_void else c_uint;

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

pub const GLDEBUGPROC = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;
pub const GLDEBUGPROCARB = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;
pub const GLDEBUGPROCKHR = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;

pub const GLDEBUGPROCAMD = fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: *c_void) callconv(.C) void;

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = fn (void) callconv(.C) void;

pub const DEPTH_BUFFER_BIT = 0x00000100;
pub const STENCIL_BUFFER_BIT = 0x00000400;
pub const COLOR_BUFFER_BIT = 0x00004000;
pub const FALSE = 0;
pub const TRUE = 1;
pub const POINTS = 0x0000;
pub const LINES = 0x0001;
pub const LINE_LOOP = 0x0002;
pub const LINE_STRIP = 0x0003;
pub const TRIANGLES = 0x0004;
pub const TRIANGLE_STRIP = 0x0005;
pub const TRIANGLE_FAN = 0x0006;
pub const ZERO = 0;
pub const ONE = 1;
pub const SRC_COLOR = 0x0300;
pub const ONE_MINUS_SRC_COLOR = 0x0301;
pub const SRC_ALPHA = 0x0302;
pub const ONE_MINUS_SRC_ALPHA = 0x0303;
pub const DST_ALPHA = 0x0304;
pub const ONE_MINUS_DST_ALPHA = 0x0305;
pub const DST_COLOR = 0x0306;
pub const ONE_MINUS_DST_COLOR = 0x0307;
pub const SRC_ALPHA_SATURATE = 0x0308;
pub const FUNC_ADD = 0x8006;
pub const BLEND_EQUATION = 0x8009;
pub const BLEND_EQUATION_RGB = 0x8009;
pub const BLEND_EQUATION_ALPHA = 0x883D;
pub const FUNC_SUBTRACT = 0x800A;
pub const FUNC_REVERSE_SUBTRACT = 0x800B;
pub const BLEND_DST_RGB = 0x80C8;
pub const BLEND_SRC_RGB = 0x80C9;
pub const BLEND_DST_ALPHA = 0x80CA;
pub const BLEND_SRC_ALPHA = 0x80CB;
pub const CONSTANT_COLOR = 0x8001;
pub const ONE_MINUS_CONSTANT_COLOR = 0x8002;
pub const CONSTANT_ALPHA = 0x8003;
pub const ONE_MINUS_CONSTANT_ALPHA = 0x8004;
pub const BLEND_COLOR = 0x8005;
pub const ARRAY_BUFFER = 0x8892;
pub const ELEMENT_ARRAY_BUFFER = 0x8893;
pub const ARRAY_BUFFER_BINDING = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
pub const STREAM_DRAW = 0x88E0;
pub const STATIC_DRAW = 0x88E4;
pub const DYNAMIC_DRAW = 0x88E8;
pub const BUFFER_SIZE = 0x8764;
pub const BUFFER_USAGE = 0x8765;
pub const CURRENT_VERTEX_ATTRIB = 0x8626;
pub const FRONT = 0x0404;
pub const BACK = 0x0405;
pub const FRONT_AND_BACK = 0x0408;
pub const TEXTURE_2D = 0x0DE1;
pub const CULL_FACE = 0x0B44;
pub const BLEND = 0x0BE2;
pub const DITHER = 0x0BD0;
pub const STENCIL_TEST = 0x0B90;
pub const DEPTH_TEST = 0x0B71;
pub const SCISSOR_TEST = 0x0C11;
pub const POLYGON_OFFSET_FILL = 0x8037;
pub const SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
pub const SAMPLE_COVERAGE = 0x80A0;
pub const NO_ERROR = 0;
pub const INVALID_ENUM = 0x0500;
pub const INVALID_VALUE = 0x0501;
pub const INVALID_OPERATION = 0x0502;
pub const OUT_OF_MEMORY = 0x0505;
pub const CW = 0x0900;
pub const CCW = 0x0901;
pub const LINE_WIDTH = 0x0B21;
pub const ALIASED_POINT_SIZE_RANGE = 0x846D;
pub const ALIASED_LINE_WIDTH_RANGE = 0x846E;
pub const CULL_FACE_MODE = 0x0B45;
pub const FRONT_FACE = 0x0B46;
pub const DEPTH_RANGE = 0x0B70;
pub const DEPTH_WRITEMASK = 0x0B72;
pub const DEPTH_CLEAR_VALUE = 0x0B73;
pub const DEPTH_FUNC = 0x0B74;
pub const STENCIL_CLEAR_VALUE = 0x0B91;
pub const STENCIL_FUNC = 0x0B92;
pub const STENCIL_FAIL = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const STENCIL_REF = 0x0B97;
pub const STENCIL_VALUE_MASK = 0x0B93;
pub const STENCIL_WRITEMASK = 0x0B98;
pub const STENCIL_BACK_FUNC = 0x8800;
pub const STENCIL_BACK_FAIL = 0x8801;
pub const STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
pub const STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
pub const STENCIL_BACK_REF = 0x8CA3;
pub const STENCIL_BACK_VALUE_MASK = 0x8CA4;
pub const STENCIL_BACK_WRITEMASK = 0x8CA5;
pub const VIEWPORT = 0x0BA2;
pub const SCISSOR_BOX = 0x0C10;
pub const COLOR_CLEAR_VALUE = 0x0C22;
pub const COLOR_WRITEMASK = 0x0C23;
pub const UNPACK_ALIGNMENT = 0x0CF5;
pub const PACK_ALIGNMENT = 0x0D05;
pub const MAX_TEXTURE_SIZE = 0x0D33;
pub const MAX_VIEWPORT_DIMS = 0x0D3A;
pub const SUBPIXEL_BITS = 0x0D50;
pub const RED_BITS = 0x0D52;
pub const GREEN_BITS = 0x0D53;
pub const BLUE_BITS = 0x0D54;
pub const ALPHA_BITS = 0x0D55;
pub const DEPTH_BITS = 0x0D56;
pub const STENCIL_BITS = 0x0D57;
pub const POLYGON_OFFSET_UNITS = 0x2A00;
pub const POLYGON_OFFSET_FACTOR = 0x8038;
pub const TEXTURE_BINDING_2D = 0x8069;
pub const SAMPLE_BUFFERS = 0x80A8;
pub const SAMPLES = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT = 0x80AB;
pub const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS = 0x86A3;
pub const DONT_CARE = 0x1100;
pub const FASTEST = 0x1101;
pub const NICEST = 0x1102;
pub const GENERATE_MIPMAP_HINT = 0x8192;
pub const BYTE = 0x1400;
pub const UNSIGNED_BYTE = 0x1401;
pub const SHORT = 0x1402;
pub const UNSIGNED_SHORT = 0x1403;
pub const INT = 0x1404;
pub const UNSIGNED_INT = 0x1405;
pub const FLOAT = 0x1406;
pub const FIXED = 0x140C;
pub const DEPTH_COMPONENT = 0x1902;
pub const ALPHA = 0x1906;
pub const RGB = 0x1907;
pub const RGBA = 0x1908;
pub const LUMINANCE = 0x1909;
pub const LUMINANCE_ALPHA = 0x190A;
pub const UNSIGNED_SHORT_4_4_4_4 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1 = 0x8034;
pub const UNSIGNED_SHORT_5_6_5 = 0x8363;
pub const FRAGMENT_SHADER = 0x8B30;
pub const VERTEX_SHADER = 0x8B31;
pub const MAX_VERTEX_ATTRIBS = 0x8869;
pub const MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
pub const MAX_VARYING_VECTORS = 0x8DFC;
pub const MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
pub const MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
pub const MAX_TEXTURE_IMAGE_UNITS = 0x8872;
pub const MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
pub const SHADER_TYPE = 0x8B4F;
pub const DELETE_STATUS = 0x8B80;
pub const LINK_STATUS = 0x8B82;
pub const VALIDATE_STATUS = 0x8B83;
pub const ATTACHED_SHADERS = 0x8B85;
pub const ACTIVE_UNIFORMS = 0x8B86;
pub const ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;
pub const ACTIVE_ATTRIBUTES = 0x8B89;
pub const ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;
pub const SHADING_LANGUAGE_VERSION = 0x8B8C;
pub const CURRENT_PROGRAM = 0x8B8D;
pub const NEVER = 0x0200;
pub const LESS = 0x0201;
pub const EQUAL = 0x0202;
pub const LEQUAL = 0x0203;
pub const GREATER = 0x0204;
pub const NOTEQUAL = 0x0205;
pub const GEQUAL = 0x0206;
pub const ALWAYS = 0x0207;
pub const KEEP = 0x1E00;
pub const REPLACE = 0x1E01;
pub const INCR = 0x1E02;
pub const DECR = 0x1E03;
pub const INVERT = 0x150A;
pub const INCR_WRAP = 0x8507;
pub const DECR_WRAP = 0x8508;
pub const VENDOR = 0x1F00;
pub const RENDERER = 0x1F01;
pub const VERSION = 0x1F02;
pub const EXTENSIONS = 0x1F03;
pub const NEAREST = 0x2600;
pub const LINEAR = 0x2601;
pub const NEAREST_MIPMAP_NEAREST = 0x2700;
pub const LINEAR_MIPMAP_NEAREST = 0x2701;
pub const NEAREST_MIPMAP_LINEAR = 0x2702;
pub const LINEAR_MIPMAP_LINEAR = 0x2703;
pub const TEXTURE_MAG_FILTER = 0x2800;
pub const TEXTURE_MIN_FILTER = 0x2801;
pub const TEXTURE_WRAP_S = 0x2802;
pub const TEXTURE_WRAP_T = 0x2803;
pub const TEXTURE = 0x1702;
pub const TEXTURE_CUBE_MAP = 0x8513;
pub const TEXTURE_BINDING_CUBE_MAP = 0x8514;
pub const TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
pub const TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
pub const TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
pub const TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
pub const MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
pub const TEXTURE0 = 0x84C0;
pub const TEXTURE1 = 0x84C1;
pub const TEXTURE2 = 0x84C2;
pub const TEXTURE3 = 0x84C3;
pub const TEXTURE4 = 0x84C4;
pub const TEXTURE5 = 0x84C5;
pub const TEXTURE6 = 0x84C6;
pub const TEXTURE7 = 0x84C7;
pub const TEXTURE8 = 0x84C8;
pub const TEXTURE9 = 0x84C9;
pub const TEXTURE10 = 0x84CA;
pub const TEXTURE11 = 0x84CB;
pub const TEXTURE12 = 0x84CC;
pub const TEXTURE13 = 0x84CD;
pub const TEXTURE14 = 0x84CE;
pub const TEXTURE15 = 0x84CF;
pub const TEXTURE16 = 0x84D0;
pub const TEXTURE17 = 0x84D1;
pub const TEXTURE18 = 0x84D2;
pub const TEXTURE19 = 0x84D3;
pub const TEXTURE20 = 0x84D4;
pub const TEXTURE21 = 0x84D5;
pub const TEXTURE22 = 0x84D6;
pub const TEXTURE23 = 0x84D7;
pub const TEXTURE24 = 0x84D8;
pub const TEXTURE25 = 0x84D9;
pub const TEXTURE26 = 0x84DA;
pub const TEXTURE27 = 0x84DB;
pub const TEXTURE28 = 0x84DC;
pub const TEXTURE29 = 0x84DD;
pub const TEXTURE30 = 0x84DE;
pub const TEXTURE31 = 0x84DF;
pub const ACTIVE_TEXTURE = 0x84E0;
pub const REPEAT = 0x2901;
pub const CLAMP_TO_EDGE = 0x812F;
pub const MIRRORED_REPEAT = 0x8370;
pub const FLOAT_VEC2 = 0x8B50;
pub const FLOAT_VEC3 = 0x8B51;
pub const FLOAT_VEC4 = 0x8B52;
pub const INT_VEC2 = 0x8B53;
pub const INT_VEC3 = 0x8B54;
pub const INT_VEC4 = 0x8B55;
pub const BOOL = 0x8B56;
pub const BOOL_VEC2 = 0x8B57;
pub const BOOL_VEC3 = 0x8B58;
pub const BOOL_VEC4 = 0x8B59;
pub const FLOAT_MAT2 = 0x8B5A;
pub const FLOAT_MAT3 = 0x8B5B;
pub const FLOAT_MAT4 = 0x8B5C;
pub const SAMPLER_2D = 0x8B5E;
pub const SAMPLER_CUBE = 0x8B60;
pub const VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
pub const VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
pub const VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
pub const VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
pub const VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
pub const VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
pub const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
pub const IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
pub const IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
pub const COMPILE_STATUS = 0x8B81;
pub const INFO_LOG_LENGTH = 0x8B84;
pub const SHADER_SOURCE_LENGTH = 0x8B88;
pub const SHADER_COMPILER = 0x8DFA;
pub const SHADER_BINARY_FORMATS = 0x8DF8;
pub const NUM_SHADER_BINARY_FORMATS = 0x8DF9;
pub const LOW_FLOAT = 0x8DF0;
pub const MEDIUM_FLOAT = 0x8DF1;
pub const HIGH_FLOAT = 0x8DF2;
pub const LOW_INT = 0x8DF3;
pub const MEDIUM_INT = 0x8DF4;
pub const HIGH_INT = 0x8DF5;
pub const FRAMEBUFFER = 0x8D40;
pub const RENDERBUFFER = 0x8D41;
pub const RGBA4 = 0x8056;
pub const RGB5_A1 = 0x8057;
pub const RGB565 = 0x8D62;
pub const DEPTH_COMPONENT16 = 0x81A5;
pub const STENCIL_INDEX8 = 0x8D48;
pub const RENDERBUFFER_WIDTH = 0x8D42;
pub const RENDERBUFFER_HEIGHT = 0x8D43;
pub const RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
pub const RENDERBUFFER_RED_SIZE = 0x8D50;
pub const RENDERBUFFER_GREEN_SIZE = 0x8D51;
pub const RENDERBUFFER_BLUE_SIZE = 0x8D52;
pub const RENDERBUFFER_ALPHA_SIZE = 0x8D53;
pub const RENDERBUFFER_DEPTH_SIZE = 0x8D54;
pub const RENDERBUFFER_STENCIL_SIZE = 0x8D55;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
pub const COLOR_ATTACHMENT0 = 0x8CE0;
pub const DEPTH_ATTACHMENT = 0x8D00;
pub const STENCIL_ATTACHMENT = 0x8D20;
pub const NONE = 0;
pub const FRAMEBUFFER_COMPLETE = 0x8CD5;
pub const FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
pub const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
pub const FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;
pub const FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
pub const FRAMEBUFFER_BINDING = 0x8CA6;
pub const RENDERBUFFER_BINDING = 0x8CA7;
pub const MAX_RENDERBUFFER_SIZE = 0x84E8;
pub const INVALID_FRAMEBUFFER_OPERATION = 0x0506;

pub fn activeTexture(texture: GLenum) void {
    return (function_pointers.glActiveTexture orelse @panic("glActiveTexture was not bound."))(texture);
}

pub fn attachShader(program: GLuint, shader: GLuint) void {
    return (function_pointers.glAttachShader orelse @panic("glAttachShader was not bound."))(program, shader);
}

pub fn bindAttribLocation(program: GLuint, index: GLuint, name: [*c]const GLchar) void {
    return (function_pointers.glBindAttribLocation orelse @panic("glBindAttribLocation was not bound."))(program, index, name);
}

pub fn bindBuffer(target: GLenum, buffer: GLuint) void {
    return (function_pointers.glBindBuffer orelse @panic("glBindBuffer was not bound."))(target, buffer);
}

pub fn bindFramebuffer(target: GLenum, framebuffer: GLuint) void {
    return (function_pointers.glBindFramebuffer orelse @panic("glBindFramebuffer was not bound."))(target, framebuffer);
}

pub fn bindRenderbuffer(target: GLenum, renderbuffer: GLuint) void {
    return (function_pointers.glBindRenderbuffer orelse @panic("glBindRenderbuffer was not bound."))(target, renderbuffer);
}

pub fn bindTexture(target: GLenum, texture: GLuint) void {
    return (function_pointers.glBindTexture orelse @panic("glBindTexture was not bound."))(target, texture);
}

pub fn blendColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glBlendColor orelse @panic("glBlendColor was not bound."))(red, green, blue, alpha);
}

pub fn blendEquation(mode: GLenum) void {
    return (function_pointers.glBlendEquation orelse @panic("glBlendEquation was not bound."))(mode);
}

pub fn blendEquationSeparate(modeRGB: GLenum, modeAlpha: GLenum) void {
    return (function_pointers.glBlendEquationSeparate orelse @panic("glBlendEquationSeparate was not bound."))(modeRGB, modeAlpha);
}

pub fn blendFunc(sfactor: GLenum, dfactor: GLenum) void {
    return (function_pointers.glBlendFunc orelse @panic("glBlendFunc was not bound."))(sfactor, dfactor);
}

pub fn blendFuncSeparate(sfactorRGB: GLenum, dfactorRGB: GLenum, sfactorAlpha: GLenum, dfactorAlpha: GLenum) void {
    return (function_pointers.glBlendFuncSeparate orelse @panic("glBlendFuncSeparate was not bound."))(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
}

pub fn bufferData(target: GLenum, size: GLsizeiptr, data: *const c_void, usage: GLenum) void {
    return (function_pointers.glBufferData orelse @panic("glBufferData was not bound."))(target, size, data, usage);
}

pub fn bufferSubData(target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *const c_void) void {
    return (function_pointers.glBufferSubData orelse @panic("glBufferSubData was not bound."))(target, offset, size, data);
}

pub fn checkFramebufferStatus(target: GLenum) GLenum {
    return (function_pointers.glCheckFramebufferStatus orelse @panic("glCheckFramebufferStatus was not bound."))(target);
}

pub fn clear(mask: GLbitfield) void {
    return (function_pointers.glClear orelse @panic("glClear was not bound."))(mask);
}

pub fn clearColor(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void {
    return (function_pointers.glClearColor orelse @panic("glClearColor was not bound."))(red, green, blue, alpha);
}

pub fn clearDepthf(d: GLfloat) void {
    return (function_pointers.glClearDepthf orelse @panic("glClearDepthf was not bound."))(d);
}

pub fn clearStencil(s: GLint) void {
    return (function_pointers.glClearStencil orelse @panic("glClearStencil was not bound."))(s);
}

pub fn colorMask(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void {
    return (function_pointers.glColorMask orelse @panic("glColorMask was not bound."))(red, green, blue, alpha);
}

pub fn compileShader(shader: GLuint) void {
    return (function_pointers.glCompileShader orelse @panic("glCompileShader was not bound."))(shader);
}

pub fn compressedTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexImage2D orelse @panic("glCompressedTexImage2D was not bound."))(target, level, internalformat, width, height, border, imageSize, data);
}

pub fn compressedTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void {
    return (function_pointers.glCompressedTexSubImage2D orelse @panic("glCompressedTexSubImage2D was not bound."))(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}

pub fn copyTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void {
    return (function_pointers.glCopyTexImage2D orelse @panic("glCopyTexImage2D was not bound."))(target, level, internalformat, x, y, width, height, border);
}

pub fn copyTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glCopyTexSubImage2D orelse @panic("glCopyTexSubImage2D was not bound."))(target, level, xoffset, yoffset, x, y, width, height);
}

pub fn createProgram() GLuint {
    return (function_pointers.glCreateProgram orelse @panic("glCreateProgram was not bound."))();
}

pub fn createShader(type: GLenum) GLuint {
    return (function_pointers.glCreateShader orelse @panic("glCreateShader was not bound."))(type);
}

pub fn cullFace(mode: GLenum) void {
    return (function_pointers.glCullFace orelse @panic("glCullFace was not bound."))(mode);
}

pub fn deleteBuffers(n: GLsizei, buffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteBuffers orelse @panic("glDeleteBuffers was not bound."))(n, buffers);
}

pub fn deleteFramebuffers(n: GLsizei, framebuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteFramebuffers orelse @panic("glDeleteFramebuffers was not bound."))(n, framebuffers);
}

pub fn deleteProgram(program: GLuint) void {
    return (function_pointers.glDeleteProgram orelse @panic("glDeleteProgram was not bound."))(program);
}

pub fn deleteRenderbuffers(n: GLsizei, renderbuffers: [*c]const GLuint) void {
    return (function_pointers.glDeleteRenderbuffers orelse @panic("glDeleteRenderbuffers was not bound."))(n, renderbuffers);
}

pub fn deleteShader(shader: GLuint) void {
    return (function_pointers.glDeleteShader orelse @panic("glDeleteShader was not bound."))(shader);
}

pub fn deleteTextures(n: GLsizei, textures: [*c]const GLuint) void {
    return (function_pointers.glDeleteTextures orelse @panic("glDeleteTextures was not bound."))(n, textures);
}

pub fn depthFunc(func: GLenum) void {
    return (function_pointers.glDepthFunc orelse @panic("glDepthFunc was not bound."))(func);
}

pub fn depthMask(flag: GLboolean) void {
    return (function_pointers.glDepthMask orelse @panic("glDepthMask was not bound."))(flag);
}

pub fn depthRangef(n: GLfloat, f: GLfloat) void {
    return (function_pointers.glDepthRangef orelse @panic("glDepthRangef was not bound."))(n, f);
}

pub fn detachShader(program: GLuint, shader: GLuint) void {
    return (function_pointers.glDetachShader orelse @panic("glDetachShader was not bound."))(program, shader);
}

pub fn disable(cap: GLenum) void {
    return (function_pointers.glDisable orelse @panic("glDisable was not bound."))(cap);
}

pub fn disableVertexAttribArray(index: GLuint) void {
    return (function_pointers.glDisableVertexAttribArray orelse @panic("glDisableVertexAttribArray was not bound."))(index);
}

pub fn drawArrays(mode: GLenum, first: GLint, count: GLsizei) void {
    return (function_pointers.glDrawArrays orelse @panic("glDrawArrays was not bound."))(mode, first, count);
}

pub fn drawElements(mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void) void {
    return (function_pointers.glDrawElements orelse @panic("glDrawElements was not bound."))(mode, count, type, indices);
}

pub fn enable(cap: GLenum) void {
    return (function_pointers.glEnable orelse @panic("glEnable was not bound."))(cap);
}

pub fn enableVertexAttribArray(index: GLuint) void {
    return (function_pointers.glEnableVertexAttribArray orelse @panic("glEnableVertexAttribArray was not bound."))(index);
}

pub fn finish() void {
    return (function_pointers.glFinish orelse @panic("glFinish was not bound."))();
}

pub fn flush() void {
    return (function_pointers.glFlush orelse @panic("glFlush was not bound."))();
}

pub fn framebufferRenderbuffer(target: GLenum, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) void {
    return (function_pointers.glFramebufferRenderbuffer orelse @panic("glFramebufferRenderbuffer was not bound."))(target, attachment, renderbuffertarget, renderbuffer);
}

pub fn framebufferTexture2D(target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void {
    return (function_pointers.glFramebufferTexture2D orelse @panic("glFramebufferTexture2D was not bound."))(target, attachment, textarget, texture, level);
}

pub fn frontFace(mode: GLenum) void {
    return (function_pointers.glFrontFace orelse @panic("glFrontFace was not bound."))(mode);
}

pub fn genBuffers(n: GLsizei, buffers: [*c]GLuint) void {
    return (function_pointers.glGenBuffers orelse @panic("glGenBuffers was not bound."))(n, buffers);
}

pub fn generateMipmap(target: GLenum) void {
    return (function_pointers.glGenerateMipmap orelse @panic("glGenerateMipmap was not bound."))(target);
}

pub fn genFramebuffers(n: GLsizei, framebuffers: [*c]GLuint) void {
    return (function_pointers.glGenFramebuffers orelse @panic("glGenFramebuffers was not bound."))(n, framebuffers);
}

pub fn genRenderbuffers(n: GLsizei, renderbuffers: [*c]GLuint) void {
    return (function_pointers.glGenRenderbuffers orelse @panic("glGenRenderbuffers was not bound."))(n, renderbuffers);
}

pub fn genTextures(n: GLsizei, textures: [*c]GLuint) void {
    return (function_pointers.glGenTextures orelse @panic("glGenTextures was not bound."))(n, textures);
}

pub fn getActiveAttrib(program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void {
    return (function_pointers.glGetActiveAttrib orelse @panic("glGetActiveAttrib was not bound."))(program, index, bufSize, length, size, type, name);
}

pub fn getActiveUniform(program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void {
    return (function_pointers.glGetActiveUniform orelse @panic("glGetActiveUniform was not bound."))(program, index, bufSize, length, size, type, name);
}

pub fn getAttachedShaders(program: GLuint, maxCount: GLsizei, count: [*c]GLsizei, shaders: [*c]GLuint) void {
    return (function_pointers.glGetAttachedShaders orelse @panic("glGetAttachedShaders was not bound."))(program, maxCount, count, shaders);
}

pub fn getAttribLocation(program: GLuint, name: [*c]const GLchar) GLint {
    return (function_pointers.glGetAttribLocation orelse @panic("glGetAttribLocation was not bound."))(program, name);
}

pub fn getBooleanv(pname: GLenum, data: [*c]GLboolean) void {
    return (function_pointers.glGetBooleanv orelse @panic("glGetBooleanv was not bound."))(pname, data);
}

pub fn getBufferParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetBufferParameteriv orelse @panic("glGetBufferParameteriv was not bound."))(target, pname, params);
}

pub fn getError() GLenum {
    return (function_pointers.glGetError orelse @panic("glGetError was not bound."))();
}

pub fn getFloatv(pname: GLenum, data: [*c]GLfloat) void {
    return (function_pointers.glGetFloatv orelse @panic("glGetFloatv was not bound."))(pname, data);
}

pub fn getFramebufferAttachmentParameteriv(target: GLenum, attachment: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetFramebufferAttachmentParameteriv orelse @panic("glGetFramebufferAttachmentParameteriv was not bound."))(target, attachment, pname, params);
}

pub fn getIntegerv(pname: GLenum, data: [*c]GLint) void {
    return (function_pointers.glGetIntegerv orelse @panic("glGetIntegerv was not bound."))(pname, data);
}

pub fn getProgramiv(program: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetProgramiv orelse @panic("glGetProgramiv was not bound."))(program, pname, params);
}

pub fn getProgramInfoLog(program: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void {
    return (function_pointers.glGetProgramInfoLog orelse @panic("glGetProgramInfoLog was not bound."))(program, bufSize, length, infoLog);
}

pub fn getRenderbufferParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetRenderbufferParameteriv orelse @panic("glGetRenderbufferParameteriv was not bound."))(target, pname, params);
}

pub fn getShaderiv(shader: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetShaderiv orelse @panic("glGetShaderiv was not bound."))(shader, pname, params);
}

pub fn getShaderInfoLog(shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void {
    return (function_pointers.glGetShaderInfoLog orelse @panic("glGetShaderInfoLog was not bound."))(shader, bufSize, length, infoLog);
}

pub fn getShaderPrecisionFormat(shadertype: GLenum, precisiontype: GLenum, range: [*c]GLint, precision: [*c]GLint) void {
    return (function_pointers.glGetShaderPrecisionFormat orelse @panic("glGetShaderPrecisionFormat was not bound."))(shadertype, precisiontype, range, precision);
}

pub fn getShaderSource(shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, source: [*c]GLchar) void {
    return (function_pointers.glGetShaderSource orelse @panic("glGetShaderSource was not bound."))(shader, bufSize, length, source);
}

pub fn getString(name: GLenum) [*:0]const GLubyte {
    return (function_pointers.glGetString orelse @panic("glGetString was not bound."))(name);
}

pub fn getTexParameterfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetTexParameterfv orelse @panic("glGetTexParameterfv was not bound."))(target, pname, params);
}

pub fn getTexParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetTexParameteriv orelse @panic("glGetTexParameteriv was not bound."))(target, pname, params);
}

pub fn getUniformfv(program: GLuint, location: GLint, params: [*c]GLfloat) void {
    return (function_pointers.glGetUniformfv orelse @panic("glGetUniformfv was not bound."))(program, location, params);
}

pub fn getUniformiv(program: GLuint, location: GLint, params: [*c]GLint) void {
    return (function_pointers.glGetUniformiv orelse @panic("glGetUniformiv was not bound."))(program, location, params);
}

pub fn getUniformLocation(program: GLuint, name: [*c]const GLchar) GLint {
    return (function_pointers.glGetUniformLocation orelse @panic("glGetUniformLocation was not bound."))(program, name);
}

pub fn getVertexAttribfv(index: GLuint, pname: GLenum, params: [*c]GLfloat) void {
    return (function_pointers.glGetVertexAttribfv orelse @panic("glGetVertexAttribfv was not bound."))(index, pname, params);
}

pub fn getVertexAttribiv(index: GLuint, pname: GLenum, params: [*c]GLint) void {
    return (function_pointers.glGetVertexAttribiv orelse @panic("glGetVertexAttribiv was not bound."))(index, pname, params);
}

pub fn getVertexAttribPointerv(index: GLuint, pname: GLenum, pointer: **c_void) void {
    return (function_pointers.glGetVertexAttribPointerv orelse @panic("glGetVertexAttribPointerv was not bound."))(index, pname, pointer);
}

pub fn hint(target: GLenum, mode: GLenum) void {
    return (function_pointers.glHint orelse @panic("glHint was not bound."))(target, mode);
}

pub fn isBuffer(buffer: GLuint) GLboolean {
    return (function_pointers.glIsBuffer orelse @panic("glIsBuffer was not bound."))(buffer);
}

pub fn isEnabled(cap: GLenum) GLboolean {
    return (function_pointers.glIsEnabled orelse @panic("glIsEnabled was not bound."))(cap);
}

pub fn isFramebuffer(framebuffer: GLuint) GLboolean {
    return (function_pointers.glIsFramebuffer orelse @panic("glIsFramebuffer was not bound."))(framebuffer);
}

pub fn isProgram(program: GLuint) GLboolean {
    return (function_pointers.glIsProgram orelse @panic("glIsProgram was not bound."))(program);
}

pub fn isRenderbuffer(renderbuffer: GLuint) GLboolean {
    return (function_pointers.glIsRenderbuffer orelse @panic("glIsRenderbuffer was not bound."))(renderbuffer);
}

pub fn isShader(shader: GLuint) GLboolean {
    return (function_pointers.glIsShader orelse @panic("glIsShader was not bound."))(shader);
}

pub fn isTexture(texture: GLuint) GLboolean {
    return (function_pointers.glIsTexture orelse @panic("glIsTexture was not bound."))(texture);
}

pub fn lineWidth(width: GLfloat) void {
    return (function_pointers.glLineWidth orelse @panic("glLineWidth was not bound."))(width);
}

pub fn linkProgram(program: GLuint) void {
    return (function_pointers.glLinkProgram orelse @panic("glLinkProgram was not bound."))(program);
}

pub fn pixelStorei(pname: GLenum, param: GLint) void {
    return (function_pointers.glPixelStorei orelse @panic("glPixelStorei was not bound."))(pname, param);
}

pub fn polygonOffset(factor: GLfloat, units: GLfloat) void {
    return (function_pointers.glPolygonOffset orelse @panic("glPolygonOffset was not bound."))(factor, units);
}

pub fn readPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *c_void) void {
    return (function_pointers.glReadPixels orelse @panic("glReadPixels was not bound."))(x, y, width, height, format, type, pixels);
}

pub fn releaseShaderCompiler() void {
    return (function_pointers.glReleaseShaderCompiler orelse @panic("glReleaseShaderCompiler was not bound."))();
}

pub fn renderbufferStorage(target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glRenderbufferStorage orelse @panic("glRenderbufferStorage was not bound."))(target, internalformat, width, height);
}

pub fn sampleCoverage(value: GLfloat, invert: GLboolean) void {
    return (function_pointers.glSampleCoverage orelse @panic("glSampleCoverage was not bound."))(value, invert);
}

pub fn scissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glScissor orelse @panic("glScissor was not bound."))(x, y, width, height);
}

pub fn shaderBinary(count: GLsizei, shaders: [*c]const GLuint, binaryFormat: GLenum, binary: *const c_void, length: GLsizei) void {
    return (function_pointers.glShaderBinary orelse @panic("glShaderBinary was not bound."))(count, shaders, binaryFormat, binary, length);
}

pub fn shaderSource(shader: GLuint, count: GLsizei, string: [*c]const [*c]const GLchar, length: [*c]const GLint) void {
    return (function_pointers.glShaderSource orelse @panic("glShaderSource was not bound."))(shader, count, string, length);
}

pub fn stencilFunc(func: GLenum, ref: GLint, mask: GLuint) void {
    return (function_pointers.glStencilFunc orelse @panic("glStencilFunc was not bound."))(func, ref, mask);
}

pub fn stencilFuncSeparate(face: GLenum, func: GLenum, ref: GLint, mask: GLuint) void {
    return (function_pointers.glStencilFuncSeparate orelse @panic("glStencilFuncSeparate was not bound."))(face, func, ref, mask);
}

pub fn stencilMask(mask: GLuint) void {
    return (function_pointers.glStencilMask orelse @panic("glStencilMask was not bound."))(mask);
}

pub fn stencilMaskSeparate(face: GLenum, mask: GLuint) void {
    return (function_pointers.glStencilMaskSeparate orelse @panic("glStencilMaskSeparate was not bound."))(face, mask);
}

pub fn stencilOp(fail: GLenum, zfail: GLenum, zpass: GLenum) void {
    return (function_pointers.glStencilOp orelse @panic("glStencilOp was not bound."))(fail, zfail, zpass);
}

pub fn stencilOpSeparate(face: GLenum, sfail: GLenum, dpfail: GLenum, dppass: GLenum) void {
    return (function_pointers.glStencilOpSeparate orelse @panic("glStencilOpSeparate was not bound."))(face, sfail, dpfail, dppass);
}

pub fn texImage2D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexImage2D orelse @panic("glTexImage2D was not bound."))(target, level, internalformat, width, height, border, format, type, pixels);
}

pub fn texParameterf(target: GLenum, pname: GLenum, param: GLfloat) void {
    return (function_pointers.glTexParameterf orelse @panic("glTexParameterf was not bound."))(target, pname, param);
}

pub fn texParameterfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void {
    return (function_pointers.glTexParameterfv orelse @panic("glTexParameterfv was not bound."))(target, pname, params);
}

pub fn texParameteri(target: GLenum, pname: GLenum, param: GLint) void {
    return (function_pointers.glTexParameteri orelse @panic("glTexParameteri was not bound."))(target, pname, param);
}

pub fn texParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) void {
    return (function_pointers.glTexParameteriv orelse @panic("glTexParameteriv was not bound."))(target, pname, params);
}

pub fn texSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void {
    return (function_pointers.glTexSubImage2D orelse @panic("glTexSubImage2D was not bound."))(target, level, xoffset, yoffset, width, height, format, type, pixels);
}

pub fn uniform1f(location: GLint, v0: GLfloat) void {
    return (function_pointers.glUniform1f orelse @panic("glUniform1f was not bound."))(location, v0);
}

pub fn uniform1fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform1fv orelse @panic("glUniform1fv was not bound."))(location, count, value);
}

pub fn uniform1i(location: GLint, v0: GLint) void {
    return (function_pointers.glUniform1i orelse @panic("glUniform1i was not bound."))(location, v0);
}

pub fn uniform1iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform1iv orelse @panic("glUniform1iv was not bound."))(location, count, value);
}

pub fn uniform2f(location: GLint, v0: GLfloat, v1: GLfloat) void {
    return (function_pointers.glUniform2f orelse @panic("glUniform2f was not bound."))(location, v0, v1);
}

pub fn uniform2fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform2fv orelse @panic("glUniform2fv was not bound."))(location, count, value);
}

pub fn uniform2i(location: GLint, v0: GLint, v1: GLint) void {
    return (function_pointers.glUniform2i orelse @panic("glUniform2i was not bound."))(location, v0, v1);
}

pub fn uniform2iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform2iv orelse @panic("glUniform2iv was not bound."))(location, count, value);
}

pub fn uniform3f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) void {
    return (function_pointers.glUniform3f orelse @panic("glUniform3f was not bound."))(location, v0, v1, v2);
}

pub fn uniform3fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform3fv orelse @panic("glUniform3fv was not bound."))(location, count, value);
}

pub fn uniform3i(location: GLint, v0: GLint, v1: GLint, v2: GLint) void {
    return (function_pointers.glUniform3i orelse @panic("glUniform3i was not bound."))(location, v0, v1, v2);
}

pub fn uniform3iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform3iv orelse @panic("glUniform3iv was not bound."))(location, count, value);
}

pub fn uniform4f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) void {
    return (function_pointers.glUniform4f orelse @panic("glUniform4f was not bound."))(location, v0, v1, v2, v3);
}

pub fn uniform4fv(location: GLint, count: GLsizei, value: [*c]const GLfloat) void {
    return (function_pointers.glUniform4fv orelse @panic("glUniform4fv was not bound."))(location, count, value);
}

pub fn uniform4i(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) void {
    return (function_pointers.glUniform4i orelse @panic("glUniform4i was not bound."))(location, v0, v1, v2, v3);
}

pub fn uniform4iv(location: GLint, count: GLsizei, value: [*c]const GLint) void {
    return (function_pointers.glUniform4iv orelse @panic("glUniform4iv was not bound."))(location, count, value);
}

pub fn uniformMatrix2fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix2fv orelse @panic("glUniformMatrix2fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix3fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix3fv orelse @panic("glUniformMatrix3fv was not bound."))(location, count, transpose, value);
}

pub fn uniformMatrix4fv(location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void {
    return (function_pointers.glUniformMatrix4fv orelse @panic("glUniformMatrix4fv was not bound."))(location, count, transpose, value);
}

pub fn useProgram(program: GLuint) void {
    return (function_pointers.glUseProgram orelse @panic("glUseProgram was not bound."))(program);
}

pub fn validateProgram(program: GLuint) void {
    return (function_pointers.glValidateProgram orelse @panic("glValidateProgram was not bound."))(program);
}

pub fn vertexAttrib1f(index: GLuint, x: GLfloat) void {
    return (function_pointers.glVertexAttrib1f orelse @panic("glVertexAttrib1f was not bound."))(index, x);
}

pub fn vertexAttrib1fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib1fv orelse @panic("glVertexAttrib1fv was not bound."))(index, v);
}

pub fn vertexAttrib2f(index: GLuint, x: GLfloat, y: GLfloat) void {
    return (function_pointers.glVertexAttrib2f orelse @panic("glVertexAttrib2f was not bound."))(index, x, y);
}

pub fn vertexAttrib2fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib2fv orelse @panic("glVertexAttrib2fv was not bound."))(index, v);
}

pub fn vertexAttrib3f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) void {
    return (function_pointers.glVertexAttrib3f orelse @panic("glVertexAttrib3f was not bound."))(index, x, y, z);
}

pub fn vertexAttrib3fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib3fv orelse @panic("glVertexAttrib3fv was not bound."))(index, v);
}

pub fn vertexAttrib4f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void {
    return (function_pointers.glVertexAttrib4f orelse @panic("glVertexAttrib4f was not bound."))(index, x, y, z, w);
}

pub fn vertexAttrib4fv(index: GLuint, v: [*c]const GLfloat) void {
    return (function_pointers.glVertexAttrib4fv orelse @panic("glVertexAttrib4fv was not bound."))(index, v);
}

pub fn vertexAttribPointer(index: GLuint, size: GLint, type: GLenum, normalized: GLboolean, stride: GLsizei, pointer: *const c_void) void {
    return (function_pointers.glVertexAttribPointer orelse @panic("glVertexAttribPointer was not bound."))(index, size, type, normalized, stride, pointer);
}

pub fn viewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void {
    return (function_pointers.glViewport orelse @panic("glViewport was not bound."))(x, y, width, height);
}
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?*c_void) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(?function_signatures.glActiveTexture, proc);
    } else {
        log.emerg("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAttachShader")) |proc| {
        function_pointers.glAttachShader = @ptrCast(?function_signatures.glAttachShader, proc);
    } else {
        log.emerg("entry point glAttachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindAttribLocation")) |proc| {
        function_pointers.glBindAttribLocation = @ptrCast(?function_signatures.glBindAttribLocation, proc);
    } else {
        log.emerg("entry point glBindAttribLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(?function_signatures.glBindBuffer, proc);
    } else {
        log.emerg("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindFramebuffer")) |proc| {
        function_pointers.glBindFramebuffer = @ptrCast(?function_signatures.glBindFramebuffer, proc);
    } else {
        log.emerg("entry point glBindFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindRenderbuffer")) |proc| {
        function_pointers.glBindRenderbuffer = @ptrCast(?function_signatures.glBindRenderbuffer, proc);
    } else {
        log.emerg("entry point glBindRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(?function_signatures.glBindTexture, proc);
    } else {
        log.emerg("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendColor")) |proc| {
        function_pointers.glBlendColor = @ptrCast(?function_signatures.glBlendColor, proc);
    } else {
        log.emerg("entry point glBlendColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquation")) |proc| {
        function_pointers.glBlendEquation = @ptrCast(?function_signatures.glBlendEquation, proc);
    } else {
        log.emerg("entry point glBlendEquation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendEquationSeparate")) |proc| {
        function_pointers.glBlendEquationSeparate = @ptrCast(?function_signatures.glBlendEquationSeparate, proc);
    } else {
        log.emerg("entry point glBlendEquationSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(?function_signatures.glBlendFunc, proc);
    } else {
        log.emerg("entry point glBlendFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFuncSeparate")) |proc| {
        function_pointers.glBlendFuncSeparate = @ptrCast(?function_signatures.glBlendFuncSeparate, proc);
    } else {
        log.emerg("entry point glBlendFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferData")) |proc| {
        function_pointers.glBufferData = @ptrCast(?function_signatures.glBufferData, proc);
    } else {
        log.emerg("entry point glBufferData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferSubData")) |proc| {
        function_pointers.glBufferSubData = @ptrCast(?function_signatures.glBufferSubData, proc);
    } else {
        log.emerg("entry point glBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCheckFramebufferStatus")) |proc| {
        function_pointers.glCheckFramebufferStatus = @ptrCast(?function_signatures.glCheckFramebufferStatus, proc);
    } else {
        log.emerg("entry point glCheckFramebufferStatus not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClear")) |proc| {
        function_pointers.glClear = @ptrCast(?function_signatures.glClear, proc);
    } else {
        log.emerg("entry point glClear not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColor")) |proc| {
        function_pointers.glClearColor = @ptrCast(?function_signatures.glClearColor, proc);
    } else {
        log.emerg("entry point glClearColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthf")) |proc| {
        function_pointers.glClearDepthf = @ptrCast(?function_signatures.glClearDepthf, proc);
    } else {
        log.emerg("entry point glClearDepthf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(?function_signatures.glClearStencil, proc);
    } else {
        log.emerg("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(?function_signatures.glColorMask, proc);
    } else {
        log.emerg("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompileShader")) |proc| {
        function_pointers.glCompileShader = @ptrCast(?function_signatures.glCompileShader, proc);
    } else {
        log.emerg("entry point glCompileShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage2D")) |proc| {
        function_pointers.glCompressedTexImage2D = @ptrCast(?function_signatures.glCompressedTexImage2D, proc);
    } else {
        log.emerg("entry point glCompressedTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage2D")) |proc| {
        function_pointers.glCompressedTexSubImage2D = @ptrCast(?function_signatures.glCompressedTexSubImage2D, proc);
    } else {
        log.emerg("entry point glCompressedTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage2D")) |proc| {
        function_pointers.glCopyTexImage2D = @ptrCast(?function_signatures.glCopyTexImage2D, proc);
    } else {
        log.emerg("entry point glCopyTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage2D")) |proc| {
        function_pointers.glCopyTexSubImage2D = @ptrCast(?function_signatures.glCopyTexSubImage2D, proc);
    } else {
        log.emerg("entry point glCopyTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCreateProgram")) |proc| {
        function_pointers.glCreateProgram = @ptrCast(?function_signatures.glCreateProgram, proc);
    } else {
        log.emerg("entry point glCreateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCreateShader")) |proc| {
        function_pointers.glCreateShader = @ptrCast(?function_signatures.glCreateShader, proc);
    } else {
        log.emerg("entry point glCreateShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCullFace")) |proc| {
        function_pointers.glCullFace = @ptrCast(?function_signatures.glCullFace, proc);
    } else {
        log.emerg("entry point glCullFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteBuffers")) |proc| {
        function_pointers.glDeleteBuffers = @ptrCast(?function_signatures.glDeleteBuffers, proc);
    } else {
        log.emerg("entry point glDeleteBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteFramebuffers")) |proc| {
        function_pointers.glDeleteFramebuffers = @ptrCast(?function_signatures.glDeleteFramebuffers, proc);
    } else {
        log.emerg("entry point glDeleteFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteProgram")) |proc| {
        function_pointers.glDeleteProgram = @ptrCast(?function_signatures.glDeleteProgram, proc);
    } else {
        log.emerg("entry point glDeleteProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteRenderbuffers")) |proc| {
        function_pointers.glDeleteRenderbuffers = @ptrCast(?function_signatures.glDeleteRenderbuffers, proc);
    } else {
        log.emerg("entry point glDeleteRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteShader")) |proc| {
        function_pointers.glDeleteShader = @ptrCast(?function_signatures.glDeleteShader, proc);
    } else {
        log.emerg("entry point glDeleteShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTextures")) |proc| {
        function_pointers.glDeleteTextures = @ptrCast(?function_signatures.glDeleteTextures, proc);
    } else {
        log.emerg("entry point glDeleteTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthFunc")) |proc| {
        function_pointers.glDepthFunc = @ptrCast(?function_signatures.glDepthFunc, proc);
    } else {
        log.emerg("entry point glDepthFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthMask")) |proc| {
        function_pointers.glDepthMask = @ptrCast(?function_signatures.glDepthMask, proc);
    } else {
        log.emerg("entry point glDepthMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangef")) |proc| {
        function_pointers.glDepthRangef = @ptrCast(?function_signatures.glDepthRangef, proc);
    } else {
        log.emerg("entry point glDepthRangef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDetachShader")) |proc| {
        function_pointers.glDetachShader = @ptrCast(?function_signatures.glDetachShader, proc);
    } else {
        log.emerg("entry point glDetachShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(?function_signatures.glDisable, proc);
    } else {
        log.emerg("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableVertexAttribArray")) |proc| {
        function_pointers.glDisableVertexAttribArray = @ptrCast(?function_signatures.glDisableVertexAttribArray, proc);
    } else {
        log.emerg("entry point glDisableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawArrays")) |proc| {
        function_pointers.glDrawArrays = @ptrCast(?function_signatures.glDrawArrays, proc);
    } else {
        log.emerg("entry point glDrawArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawElements")) |proc| {
        function_pointers.glDrawElements = @ptrCast(?function_signatures.glDrawElements, proc);
    } else {
        log.emerg("entry point glDrawElements not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnable")) |proc| {
        function_pointers.glEnable = @ptrCast(?function_signatures.glEnable, proc);
    } else {
        log.emerg("entry point glEnable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableVertexAttribArray")) |proc| {
        function_pointers.glEnableVertexAttribArray = @ptrCast(?function_signatures.glEnableVertexAttribArray, proc);
    } else {
        log.emerg("entry point glEnableVertexAttribArray not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFinish")) |proc| {
        function_pointers.glFinish = @ptrCast(?function_signatures.glFinish, proc);
    } else {
        log.emerg("entry point glFinish not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFlush")) |proc| {
        function_pointers.glFlush = @ptrCast(?function_signatures.glFlush, proc);
    } else {
        log.emerg("entry point glFlush not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferRenderbuffer")) |proc| {
        function_pointers.glFramebufferRenderbuffer = @ptrCast(?function_signatures.glFramebufferRenderbuffer, proc);
    } else {
        log.emerg("entry point glFramebufferRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFramebufferTexture2D")) |proc| {
        function_pointers.glFramebufferTexture2D = @ptrCast(?function_signatures.glFramebufferTexture2D, proc);
    } else {
        log.emerg("entry point glFramebufferTexture2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(?function_signatures.glFrontFace, proc);
    } else {
        log.emerg("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(?function_signatures.glGenBuffers, proc);
    } else {
        log.emerg("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenerateMipmap")) |proc| {
        function_pointers.glGenerateMipmap = @ptrCast(?function_signatures.glGenerateMipmap, proc);
    } else {
        log.emerg("entry point glGenerateMipmap not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenFramebuffers")) |proc| {
        function_pointers.glGenFramebuffers = @ptrCast(?function_signatures.glGenFramebuffers, proc);
    } else {
        log.emerg("entry point glGenFramebuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenRenderbuffers")) |proc| {
        function_pointers.glGenRenderbuffers = @ptrCast(?function_signatures.glGenRenderbuffers, proc);
    } else {
        log.emerg("entry point glGenRenderbuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(?function_signatures.glGenTextures, proc);
    } else {
        log.emerg("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveAttrib")) |proc| {
        function_pointers.glGetActiveAttrib = @ptrCast(?function_signatures.glGetActiveAttrib, proc);
    } else {
        log.emerg("entry point glGetActiveAttrib not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetActiveUniform")) |proc| {
        function_pointers.glGetActiveUniform = @ptrCast(?function_signatures.glGetActiveUniform, proc);
    } else {
        log.emerg("entry point glGetActiveUniform not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetAttachedShaders")) |proc| {
        function_pointers.glGetAttachedShaders = @ptrCast(?function_signatures.glGetAttachedShaders, proc);
    } else {
        log.emerg("entry point glGetAttachedShaders not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetAttribLocation")) |proc| {
        function_pointers.glGetAttribLocation = @ptrCast(?function_signatures.glGetAttribLocation, proc);
    } else {
        log.emerg("entry point glGetAttribLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleanv")) |proc| {
        function_pointers.glGetBooleanv = @ptrCast(?function_signatures.glGetBooleanv, proc);
    } else {
        log.emerg("entry point glGetBooleanv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteriv")) |proc| {
        function_pointers.glGetBufferParameteriv = @ptrCast(?function_signatures.glGetBufferParameteriv, proc);
    } else {
        log.emerg("entry point glGetBufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetError")) |proc| {
        function_pointers.glGetError = @ptrCast(?function_signatures.glGetError, proc);
    } else {
        log.emerg("entry point glGetError not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFloatv")) |proc| {
        function_pointers.glGetFloatv = @ptrCast(?function_signatures.glGetFloatv, proc);
    } else {
        log.emerg("entry point glGetFloatv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFramebufferAttachmentParameteriv")) |proc| {
        function_pointers.glGetFramebufferAttachmentParameteriv = @ptrCast(?function_signatures.glGetFramebufferAttachmentParameteriv, proc);
    } else {
        log.emerg("entry point glGetFramebufferAttachmentParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(?function_signatures.glGetIntegerv, proc);
    } else {
        log.emerg("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramiv")) |proc| {
        function_pointers.glGetProgramiv = @ptrCast(?function_signatures.glGetProgramiv, proc);
    } else {
        log.emerg("entry point glGetProgramiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetProgramInfoLog")) |proc| {
        function_pointers.glGetProgramInfoLog = @ptrCast(?function_signatures.glGetProgramInfoLog, proc);
    } else {
        log.emerg("entry point glGetProgramInfoLog not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetRenderbufferParameteriv")) |proc| {
        function_pointers.glGetRenderbufferParameteriv = @ptrCast(?function_signatures.glGetRenderbufferParameteriv, proc);
    } else {
        log.emerg("entry point glGetRenderbufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderiv")) |proc| {
        function_pointers.glGetShaderiv = @ptrCast(?function_signatures.glGetShaderiv, proc);
    } else {
        log.emerg("entry point glGetShaderiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderInfoLog")) |proc| {
        function_pointers.glGetShaderInfoLog = @ptrCast(?function_signatures.glGetShaderInfoLog, proc);
    } else {
        log.emerg("entry point glGetShaderInfoLog not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderPrecisionFormat")) |proc| {
        function_pointers.glGetShaderPrecisionFormat = @ptrCast(?function_signatures.glGetShaderPrecisionFormat, proc);
    } else {
        log.emerg("entry point glGetShaderPrecisionFormat not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetShaderSource")) |proc| {
        function_pointers.glGetShaderSource = @ptrCast(?function_signatures.glGetShaderSource, proc);
    } else {
        log.emerg("entry point glGetShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(?function_signatures.glGetString, proc);
    } else {
        log.emerg("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterfv")) |proc| {
        function_pointers.glGetTexParameterfv = @ptrCast(?function_signatures.glGetTexParameterfv, proc);
    } else {
        log.emerg("entry point glGetTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameteriv")) |proc| {
        function_pointers.glGetTexParameteriv = @ptrCast(?function_signatures.glGetTexParameteriv, proc);
    } else {
        log.emerg("entry point glGetTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformfv")) |proc| {
        function_pointers.glGetUniformfv = @ptrCast(?function_signatures.glGetUniformfv, proc);
    } else {
        log.emerg("entry point glGetUniformfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformiv")) |proc| {
        function_pointers.glGetUniformiv = @ptrCast(?function_signatures.glGetUniformiv, proc);
    } else {
        log.emerg("entry point glGetUniformiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetUniformLocation")) |proc| {
        function_pointers.glGetUniformLocation = @ptrCast(?function_signatures.glGetUniformLocation, proc);
    } else {
        log.emerg("entry point glGetUniformLocation not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribfv")) |proc| {
        function_pointers.glGetVertexAttribfv = @ptrCast(?function_signatures.glGetVertexAttribfv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribiv")) |proc| {
        function_pointers.glGetVertexAttribiv = @ptrCast(?function_signatures.glGetVertexAttribiv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribiv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetVertexAttribPointerv")) |proc| {
        function_pointers.glGetVertexAttribPointerv = @ptrCast(?function_signatures.glGetVertexAttribPointerv, proc);
    } else {
        log.emerg("entry point glGetVertexAttribPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glHint")) |proc| {
        function_pointers.glHint = @ptrCast(?function_signatures.glHint, proc);
    } else {
        log.emerg("entry point glHint not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsBuffer")) |proc| {
        function_pointers.glIsBuffer = @ptrCast(?function_signatures.glIsBuffer, proc);
    } else {
        log.emerg("entry point glIsBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabled")) |proc| {
        function_pointers.glIsEnabled = @ptrCast(?function_signatures.glIsEnabled, proc);
    } else {
        log.emerg("entry point glIsEnabled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsFramebuffer")) |proc| {
        function_pointers.glIsFramebuffer = @ptrCast(?function_signatures.glIsFramebuffer, proc);
    } else {
        log.emerg("entry point glIsFramebuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsProgram")) |proc| {
        function_pointers.glIsProgram = @ptrCast(?function_signatures.glIsProgram, proc);
    } else {
        log.emerg("entry point glIsProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsRenderbuffer")) |proc| {
        function_pointers.glIsRenderbuffer = @ptrCast(?function_signatures.glIsRenderbuffer, proc);
    } else {
        log.emerg("entry point glIsRenderbuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsShader")) |proc| {
        function_pointers.glIsShader = @ptrCast(?function_signatures.glIsShader, proc);
    } else {
        log.emerg("entry point glIsShader not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(?function_signatures.glIsTexture, proc);
    } else {
        log.emerg("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(?function_signatures.glLineWidth, proc);
    } else {
        log.emerg("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLinkProgram")) |proc| {
        function_pointers.glLinkProgram = @ptrCast(?function_signatures.glLinkProgram, proc);
    } else {
        log.emerg("entry point glLinkProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(?function_signatures.glPixelStorei, proc);
    } else {
        log.emerg("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(?function_signatures.glPolygonOffset, proc);
    } else {
        log.emerg("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(?function_signatures.glReadPixels, proc);
    } else {
        log.emerg("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReleaseShaderCompiler")) |proc| {
        function_pointers.glReleaseShaderCompiler = @ptrCast(?function_signatures.glReleaseShaderCompiler, proc);
    } else {
        log.emerg("entry point glReleaseShaderCompiler not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRenderbufferStorage")) |proc| {
        function_pointers.glRenderbufferStorage = @ptrCast(?function_signatures.glRenderbufferStorage, proc);
    } else {
        log.emerg("entry point glRenderbufferStorage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(?function_signatures.glSampleCoverage, proc);
    } else {
        log.emerg("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(?function_signatures.glScissor, proc);
    } else {
        log.emerg("entry point glScissor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShaderBinary")) |proc| {
        function_pointers.glShaderBinary = @ptrCast(?function_signatures.glShaderBinary, proc);
    } else {
        log.emerg("entry point glShaderBinary not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShaderSource")) |proc| {
        function_pointers.glShaderSource = @ptrCast(?function_signatures.glShaderSource, proc);
    } else {
        log.emerg("entry point glShaderSource not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(?function_signatures.glStencilFunc, proc);
    } else {
        log.emerg("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFuncSeparate")) |proc| {
        function_pointers.glStencilFuncSeparate = @ptrCast(?function_signatures.glStencilFuncSeparate, proc);
    } else {
        log.emerg("entry point glStencilFuncSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(?function_signatures.glStencilMask, proc);
    } else {
        log.emerg("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMaskSeparate")) |proc| {
        function_pointers.glStencilMaskSeparate = @ptrCast(?function_signatures.glStencilMaskSeparate, proc);
    } else {
        log.emerg("entry point glStencilMaskSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(?function_signatures.glStencilOp, proc);
    } else {
        log.emerg("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOpSeparate")) |proc| {
        function_pointers.glStencilOpSeparate = @ptrCast(?function_signatures.glStencilOpSeparate, proc);
    } else {
        log.emerg("entry point glStencilOpSeparate not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(?function_signatures.glTexImage2D, proc);
    } else {
        log.emerg("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterf")) |proc| {
        function_pointers.glTexParameterf = @ptrCast(?function_signatures.glTexParameterf, proc);
    } else {
        log.emerg("entry point glTexParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterfv")) |proc| {
        function_pointers.glTexParameterfv = @ptrCast(?function_signatures.glTexParameterfv, proc);
    } else {
        log.emerg("entry point glTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteri")) |proc| {
        function_pointers.glTexParameteri = @ptrCast(?function_signatures.glTexParameteri, proc);
    } else {
        log.emerg("entry point glTexParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteriv")) |proc| {
        function_pointers.glTexParameteriv = @ptrCast(?function_signatures.glTexParameteriv, proc);
    } else {
        log.emerg("entry point glTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(?function_signatures.glTexSubImage2D, proc);
    } else {
        log.emerg("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1f")) |proc| {
        function_pointers.glUniform1f = @ptrCast(?function_signatures.glUniform1f, proc);
    } else {
        log.emerg("entry point glUniform1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1fv")) |proc| {
        function_pointers.glUniform1fv = @ptrCast(?function_signatures.glUniform1fv, proc);
    } else {
        log.emerg("entry point glUniform1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1i")) |proc| {
        function_pointers.glUniform1i = @ptrCast(?function_signatures.glUniform1i, proc);
    } else {
        log.emerg("entry point glUniform1i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform1iv")) |proc| {
        function_pointers.glUniform1iv = @ptrCast(?function_signatures.glUniform1iv, proc);
    } else {
        log.emerg("entry point glUniform1iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2f")) |proc| {
        function_pointers.glUniform2f = @ptrCast(?function_signatures.glUniform2f, proc);
    } else {
        log.emerg("entry point glUniform2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2fv")) |proc| {
        function_pointers.glUniform2fv = @ptrCast(?function_signatures.glUniform2fv, proc);
    } else {
        log.emerg("entry point glUniform2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2i")) |proc| {
        function_pointers.glUniform2i = @ptrCast(?function_signatures.glUniform2i, proc);
    } else {
        log.emerg("entry point glUniform2i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform2iv")) |proc| {
        function_pointers.glUniform2iv = @ptrCast(?function_signatures.glUniform2iv, proc);
    } else {
        log.emerg("entry point glUniform2iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3f")) |proc| {
        function_pointers.glUniform3f = @ptrCast(?function_signatures.glUniform3f, proc);
    } else {
        log.emerg("entry point glUniform3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3fv")) |proc| {
        function_pointers.glUniform3fv = @ptrCast(?function_signatures.glUniform3fv, proc);
    } else {
        log.emerg("entry point glUniform3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3i")) |proc| {
        function_pointers.glUniform3i = @ptrCast(?function_signatures.glUniform3i, proc);
    } else {
        log.emerg("entry point glUniform3i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform3iv")) |proc| {
        function_pointers.glUniform3iv = @ptrCast(?function_signatures.glUniform3iv, proc);
    } else {
        log.emerg("entry point glUniform3iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4f")) |proc| {
        function_pointers.glUniform4f = @ptrCast(?function_signatures.glUniform4f, proc);
    } else {
        log.emerg("entry point glUniform4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4fv")) |proc| {
        function_pointers.glUniform4fv = @ptrCast(?function_signatures.glUniform4fv, proc);
    } else {
        log.emerg("entry point glUniform4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4i")) |proc| {
        function_pointers.glUniform4i = @ptrCast(?function_signatures.glUniform4i, proc);
    } else {
        log.emerg("entry point glUniform4i not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniform4iv")) |proc| {
        function_pointers.glUniform4iv = @ptrCast(?function_signatures.glUniform4iv, proc);
    } else {
        log.emerg("entry point glUniform4iv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix2fv")) |proc| {
        function_pointers.glUniformMatrix2fv = @ptrCast(?function_signatures.glUniformMatrix2fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix3fv")) |proc| {
        function_pointers.glUniformMatrix3fv = @ptrCast(?function_signatures.glUniformMatrix3fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUniformMatrix4fv")) |proc| {
        function_pointers.glUniformMatrix4fv = @ptrCast(?function_signatures.glUniformMatrix4fv, proc);
    } else {
        log.emerg("entry point glUniformMatrix4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glUseProgram")) |proc| {
        function_pointers.glUseProgram = @ptrCast(?function_signatures.glUseProgram, proc);
    } else {
        log.emerg("entry point glUseProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glValidateProgram")) |proc| {
        function_pointers.glValidateProgram = @ptrCast(?function_signatures.glValidateProgram, proc);
    } else {
        log.emerg("entry point glValidateProgram not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1f")) |proc| {
        function_pointers.glVertexAttrib1f = @ptrCast(?function_signatures.glVertexAttrib1f, proc);
    } else {
        log.emerg("entry point glVertexAttrib1f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib1fv")) |proc| {
        function_pointers.glVertexAttrib1fv = @ptrCast(?function_signatures.glVertexAttrib1fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib1fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2f")) |proc| {
        function_pointers.glVertexAttrib2f = @ptrCast(?function_signatures.glVertexAttrib2f, proc);
    } else {
        log.emerg("entry point glVertexAttrib2f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib2fv")) |proc| {
        function_pointers.glVertexAttrib2fv = @ptrCast(?function_signatures.glVertexAttrib2fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib2fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3f")) |proc| {
        function_pointers.glVertexAttrib3f = @ptrCast(?function_signatures.glVertexAttrib3f, proc);
    } else {
        log.emerg("entry point glVertexAttrib3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib3fv")) |proc| {
        function_pointers.glVertexAttrib3fv = @ptrCast(?function_signatures.glVertexAttrib3fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib3fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4f")) |proc| {
        function_pointers.glVertexAttrib4f = @ptrCast(?function_signatures.glVertexAttrib4f, proc);
    } else {
        log.emerg("entry point glVertexAttrib4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttrib4fv")) |proc| {
        function_pointers.glVertexAttrib4fv = @ptrCast(?function_signatures.glVertexAttrib4fv, proc);
    } else {
        log.emerg("entry point glVertexAttrib4fv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexAttribPointer")) |proc| {
        function_pointers.glVertexAttribPointer = @ptrCast(?function_signatures.glVertexAttribPointer, proc);
    } else {
        log.emerg("entry point glVertexAttribPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(?function_signatures.glViewport, proc);
    } else {
        log.emerg("entry point glViewport not found!", .{});
        success = false;
    }
    if (!success)
        return error.EntryPointNotFound;
}

const function_signatures = struct {
    const glActiveTexture = fn (texture: GLenum) void;
    const glAttachShader = fn (program: GLuint, shader: GLuint) void;
    const glBindAttribLocation = fn (program: GLuint, index: GLuint, name: [*c]const GLchar) void;
    const glBindBuffer = fn (target: GLenum, buffer: GLuint) void;
    const glBindFramebuffer = fn (target: GLenum, framebuffer: GLuint) void;
    const glBindRenderbuffer = fn (target: GLenum, renderbuffer: GLuint) void;
    const glBindTexture = fn (target: GLenum, texture: GLuint) void;
    const glBlendColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glBlendEquation = fn (mode: GLenum) void;
    const glBlendEquationSeparate = fn (modeRGB: GLenum, modeAlpha: GLenum) void;
    const glBlendFunc = fn (sfactor: GLenum, dfactor: GLenum) void;
    const glBlendFuncSeparate = fn (sfactorRGB: GLenum, dfactorRGB: GLenum, sfactorAlpha: GLenum, dfactorAlpha: GLenum) void;
    const glBufferData = fn (target: GLenum, size: GLsizeiptr, data: *const c_void, usage: GLenum) void;
    const glBufferSubData = fn (target: GLenum, offset: GLintptr, size: GLsizeiptr, data: *const c_void) void;
    const glCheckFramebufferStatus = fn (target: GLenum) GLenum;
    const glClear = fn (mask: GLbitfield) void;
    const glClearColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
    const glClearDepthf = fn (d: GLfloat) void;
    const glClearStencil = fn (s: GLint) void;
    const glColorMask = fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void;
    const glCompileShader = fn (shader: GLuint) void;
    const glCompressedTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, imageSize: GLsizei, data: *const c_void) void;
    const glCompressedTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, imageSize: GLsizei, data: *const c_void) void;
    const glCopyTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void;
    const glCopyTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glCreateProgram = fn () GLuint;
    const glCreateShader = fn (type: GLenum) GLuint;
    const glCullFace = fn (mode: GLenum) void;
    const glDeleteBuffers = fn (n: GLsizei, buffers: [*c]const GLuint) void;
    const glDeleteFramebuffers = fn (n: GLsizei, framebuffers: [*c]const GLuint) void;
    const glDeleteProgram = fn (program: GLuint) void;
    const glDeleteRenderbuffers = fn (n: GLsizei, renderbuffers: [*c]const GLuint) void;
    const glDeleteShader = fn (shader: GLuint) void;
    const glDeleteTextures = fn (n: GLsizei, textures: [*c]const GLuint) void;
    const glDepthFunc = fn (func: GLenum) void;
    const glDepthMask = fn (flag: GLboolean) void;
    const glDepthRangef = fn (n: GLfloat, f: GLfloat) void;
    const glDetachShader = fn (program: GLuint, shader: GLuint) void;
    const glDisable = fn (cap: GLenum) void;
    const glDisableVertexAttribArray = fn (index: GLuint) void;
    const glDrawArrays = fn (mode: GLenum, first: GLint, count: GLsizei) void;
    const glDrawElements = fn (mode: GLenum, count: GLsizei, type: GLenum, indices: *const c_void) void;
    const glEnable = fn (cap: GLenum) void;
    const glEnableVertexAttribArray = fn (index: GLuint) void;
    const glFinish = fn () void;
    const glFlush = fn () void;
    const glFramebufferRenderbuffer = fn (target: GLenum, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) void;
    const glFramebufferTexture2D = fn (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) void;
    const glFrontFace = fn (mode: GLenum) void;
    const glGenBuffers = fn (n: GLsizei, buffers: [*c]GLuint) void;
    const glGenerateMipmap = fn (target: GLenum) void;
    const glGenFramebuffers = fn (n: GLsizei, framebuffers: [*c]GLuint) void;
    const glGenRenderbuffers = fn (n: GLsizei, renderbuffers: [*c]GLuint) void;
    const glGenTextures = fn (n: GLsizei, textures: [*c]GLuint) void;
    const glGetActiveAttrib = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void;
    const glGetActiveUniform = fn (program: GLuint, index: GLuint, bufSize: GLsizei, length: [*c]GLsizei, size: [*c]GLint, type: [*c]GLenum, name: [*c]GLchar) void;
    const glGetAttachedShaders = fn (program: GLuint, maxCount: GLsizei, count: [*c]GLsizei, shaders: [*c]GLuint) void;
    const glGetAttribLocation = fn (program: GLuint, name: [*c]const GLchar) GLint;
    const glGetBooleanv = fn (pname: GLenum, data: [*c]GLboolean) void;
    const glGetBufferParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetError = fn () GLenum;
    const glGetFloatv = fn (pname: GLenum, data: [*c]GLfloat) void;
    const glGetFramebufferAttachmentParameteriv = fn (target: GLenum, attachment: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetIntegerv = fn (pname: GLenum, data: [*c]GLint) void;
    const glGetProgramiv = fn (program: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetProgramInfoLog = fn (program: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void;
    const glGetRenderbufferParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetShaderiv = fn (shader: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetShaderInfoLog = fn (shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, infoLog: [*c]GLchar) void;
    const glGetShaderPrecisionFormat = fn (shadertype: GLenum, precisiontype: GLenum, range: [*c]GLint, precision: [*c]GLint) void;
    const glGetShaderSource = fn (shader: GLuint, bufSize: GLsizei, length: [*c]GLsizei, source: [*c]GLchar) void;
    const glGetString = fn (name: GLenum) [*:0]const GLubyte;
    const glGetTexParameterfv = fn (target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
    const glGetTexParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]GLint) void;
    const glGetUniformfv = fn (program: GLuint, location: GLint, params: [*c]GLfloat) void;
    const glGetUniformiv = fn (program: GLuint, location: GLint, params: [*c]GLint) void;
    const glGetUniformLocation = fn (program: GLuint, name: [*c]const GLchar) GLint;
    const glGetVertexAttribfv = fn (index: GLuint, pname: GLenum, params: [*c]GLfloat) void;
    const glGetVertexAttribiv = fn (index: GLuint, pname: GLenum, params: [*c]GLint) void;
    const glGetVertexAttribPointerv = fn (index: GLuint, pname: GLenum, pointer: **c_void) void;
    const glHint = fn (target: GLenum, mode: GLenum) void;
    const glIsBuffer = fn (buffer: GLuint) GLboolean;
    const glIsEnabled = fn (cap: GLenum) GLboolean;
    const glIsFramebuffer = fn (framebuffer: GLuint) GLboolean;
    const glIsProgram = fn (program: GLuint) GLboolean;
    const glIsRenderbuffer = fn (renderbuffer: GLuint) GLboolean;
    const glIsShader = fn (shader: GLuint) GLboolean;
    const glIsTexture = fn (texture: GLuint) GLboolean;
    const glLineWidth = fn (width: GLfloat) void;
    const glLinkProgram = fn (program: GLuint) void;
    const glPixelStorei = fn (pname: GLenum, param: GLint) void;
    const glPolygonOffset = fn (factor: GLfloat, units: GLfloat) void;
    const glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *c_void) void;
    const glReleaseShaderCompiler = fn () void;
    const glRenderbufferStorage = fn (target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei) void;
    const glSampleCoverage = fn (value: GLfloat, invert: GLboolean) void;
    const glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
    const glShaderBinary = fn (count: GLsizei, shaders: [*c]const GLuint, binaryFormat: GLenum, binary: *const c_void, length: GLsizei) void;
    const glShaderSource = fn (shader: GLuint, count: GLsizei, string: [*c]const [*c]const GLchar, length: [*c]const GLint) void;
    const glStencilFunc = fn (func: GLenum, ref: GLint, mask: GLuint) void;
    const glStencilFuncSeparate = fn (face: GLenum, func: GLenum, ref: GLint, mask: GLuint) void;
    const glStencilMask = fn (mask: GLuint) void;
    const glStencilMaskSeparate = fn (face: GLenum, mask: GLuint) void;
    const glStencilOp = fn (fail: GLenum, zfail: GLenum, zpass: GLenum) void;
    const glStencilOpSeparate = fn (face: GLenum, sfail: GLenum, dpfail: GLenum, dppass: GLenum) void;
    const glTexImage2D = fn (target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glTexParameterf = fn (target: GLenum, pname: GLenum, param: GLfloat) void;
    const glTexParameterfv = fn (target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
    const glTexParameteri = fn (target: GLenum, pname: GLenum, param: GLint) void;
    const glTexParameteriv = fn (target: GLenum, pname: GLenum, params: [*c]const GLint) void;
    const glTexSubImage2D = fn (target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: *const c_void) void;
    const glUniform1f = fn (location: GLint, v0: GLfloat) void;
    const glUniform1fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform1i = fn (location: GLint, v0: GLint) void;
    const glUniform1iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniform2f = fn (location: GLint, v0: GLfloat, v1: GLfloat) void;
    const glUniform2fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform2i = fn (location: GLint, v0: GLint, v1: GLint) void;
    const glUniform2iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniform3f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) void;
    const glUniform3fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform3i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint) void;
    const glUniform3iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniform4f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) void;
    const glUniform4fv = fn (location: GLint, count: GLsizei, value: [*c]const GLfloat) void;
    const glUniform4i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) void;
    const glUniform4iv = fn (location: GLint, count: GLsizei, value: [*c]const GLint) void;
    const glUniformMatrix2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUniformMatrix4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: [*c]const GLfloat) void;
    const glUseProgram = fn (program: GLuint) void;
    const glValidateProgram = fn (program: GLuint) void;
    const glVertexAttrib1f = fn (index: GLuint, x: GLfloat) void;
    const glVertexAttrib1fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib2f = fn (index: GLuint, x: GLfloat, y: GLfloat) void;
    const glVertexAttrib2fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib3f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) void;
    const glVertexAttrib3fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttrib4f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void;
    const glVertexAttrib4fv = fn (index: GLuint, v: [*c]const GLfloat) void;
    const glVertexAttribPointer = fn (index: GLuint, size: GLint, type: GLenum, normalized: GLboolean, stride: GLsizei, pointer: *const c_void) void;
    const glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
};

const function_pointers = struct {
    var glActiveTexture: ?function_signatures.glActiveTexture = null;
    var glAttachShader: ?function_signatures.glAttachShader = null;
    var glBindAttribLocation: ?function_signatures.glBindAttribLocation = null;
    var glBindBuffer: ?function_signatures.glBindBuffer = null;
    var glBindFramebuffer: ?function_signatures.glBindFramebuffer = null;
    var glBindRenderbuffer: ?function_signatures.glBindRenderbuffer = null;
    var glBindTexture: ?function_signatures.glBindTexture = null;
    var glBlendColor: ?function_signatures.glBlendColor = null;
    var glBlendEquation: ?function_signatures.glBlendEquation = null;
    var glBlendEquationSeparate: ?function_signatures.glBlendEquationSeparate = null;
    var glBlendFunc: ?function_signatures.glBlendFunc = null;
    var glBlendFuncSeparate: ?function_signatures.glBlendFuncSeparate = null;
    var glBufferData: ?function_signatures.glBufferData = null;
    var glBufferSubData: ?function_signatures.glBufferSubData = null;
    var glCheckFramebufferStatus: ?function_signatures.glCheckFramebufferStatus = null;
    var glClear: ?function_signatures.glClear = null;
    var glClearColor: ?function_signatures.glClearColor = null;
    var glClearDepthf: ?function_signatures.glClearDepthf = null;
    var glClearStencil: ?function_signatures.glClearStencil = null;
    var glColorMask: ?function_signatures.glColorMask = null;
    var glCompileShader: ?function_signatures.glCompileShader = null;
    var glCompressedTexImage2D: ?function_signatures.glCompressedTexImage2D = null;
    var glCompressedTexSubImage2D: ?function_signatures.glCompressedTexSubImage2D = null;
    var glCopyTexImage2D: ?function_signatures.glCopyTexImage2D = null;
    var glCopyTexSubImage2D: ?function_signatures.glCopyTexSubImage2D = null;
    var glCreateProgram: ?function_signatures.glCreateProgram = null;
    var glCreateShader: ?function_signatures.glCreateShader = null;
    var glCullFace: ?function_signatures.glCullFace = null;
    var glDeleteBuffers: ?function_signatures.glDeleteBuffers = null;
    var glDeleteFramebuffers: ?function_signatures.glDeleteFramebuffers = null;
    var glDeleteProgram: ?function_signatures.glDeleteProgram = null;
    var glDeleteRenderbuffers: ?function_signatures.glDeleteRenderbuffers = null;
    var glDeleteShader: ?function_signatures.glDeleteShader = null;
    var glDeleteTextures: ?function_signatures.glDeleteTextures = null;
    var glDepthFunc: ?function_signatures.glDepthFunc = null;
    var glDepthMask: ?function_signatures.glDepthMask = null;
    var glDepthRangef: ?function_signatures.glDepthRangef = null;
    var glDetachShader: ?function_signatures.glDetachShader = null;
    var glDisable: ?function_signatures.glDisable = null;
    var glDisableVertexAttribArray: ?function_signatures.glDisableVertexAttribArray = null;
    var glDrawArrays: ?function_signatures.glDrawArrays = null;
    var glDrawElements: ?function_signatures.glDrawElements = null;
    var glEnable: ?function_signatures.glEnable = null;
    var glEnableVertexAttribArray: ?function_signatures.glEnableVertexAttribArray = null;
    var glFinish: ?function_signatures.glFinish = null;
    var glFlush: ?function_signatures.glFlush = null;
    var glFramebufferRenderbuffer: ?function_signatures.glFramebufferRenderbuffer = null;
    var glFramebufferTexture2D: ?function_signatures.glFramebufferTexture2D = null;
    var glFrontFace: ?function_signatures.glFrontFace = null;
    var glGenBuffers: ?function_signatures.glGenBuffers = null;
    var glGenerateMipmap: ?function_signatures.glGenerateMipmap = null;
    var glGenFramebuffers: ?function_signatures.glGenFramebuffers = null;
    var glGenRenderbuffers: ?function_signatures.glGenRenderbuffers = null;
    var glGenTextures: ?function_signatures.glGenTextures = null;
    var glGetActiveAttrib: ?function_signatures.glGetActiveAttrib = null;
    var glGetActiveUniform: ?function_signatures.glGetActiveUniform = null;
    var glGetAttachedShaders: ?function_signatures.glGetAttachedShaders = null;
    var glGetAttribLocation: ?function_signatures.glGetAttribLocation = null;
    var glGetBooleanv: ?function_signatures.glGetBooleanv = null;
    var glGetBufferParameteriv: ?function_signatures.glGetBufferParameteriv = null;
    var glGetError: ?function_signatures.glGetError = null;
    var glGetFloatv: ?function_signatures.glGetFloatv = null;
    var glGetFramebufferAttachmentParameteriv: ?function_signatures.glGetFramebufferAttachmentParameteriv = null;
    var glGetIntegerv: ?function_signatures.glGetIntegerv = null;
    var glGetProgramiv: ?function_signatures.glGetProgramiv = null;
    var glGetProgramInfoLog: ?function_signatures.glGetProgramInfoLog = null;
    var glGetRenderbufferParameteriv: ?function_signatures.glGetRenderbufferParameteriv = null;
    var glGetShaderiv: ?function_signatures.glGetShaderiv = null;
    var glGetShaderInfoLog: ?function_signatures.glGetShaderInfoLog = null;
    var glGetShaderPrecisionFormat: ?function_signatures.glGetShaderPrecisionFormat = null;
    var glGetShaderSource: ?function_signatures.glGetShaderSource = null;
    var glGetString: ?function_signatures.glGetString = null;
    var glGetTexParameterfv: ?function_signatures.glGetTexParameterfv = null;
    var glGetTexParameteriv: ?function_signatures.glGetTexParameteriv = null;
    var glGetUniformfv: ?function_signatures.glGetUniformfv = null;
    var glGetUniformiv: ?function_signatures.glGetUniformiv = null;
    var glGetUniformLocation: ?function_signatures.glGetUniformLocation = null;
    var glGetVertexAttribfv: ?function_signatures.glGetVertexAttribfv = null;
    var glGetVertexAttribiv: ?function_signatures.glGetVertexAttribiv = null;
    var glGetVertexAttribPointerv: ?function_signatures.glGetVertexAttribPointerv = null;
    var glHint: ?function_signatures.glHint = null;
    var glIsBuffer: ?function_signatures.glIsBuffer = null;
    var glIsEnabled: ?function_signatures.glIsEnabled = null;
    var glIsFramebuffer: ?function_signatures.glIsFramebuffer = null;
    var glIsProgram: ?function_signatures.glIsProgram = null;
    var glIsRenderbuffer: ?function_signatures.glIsRenderbuffer = null;
    var glIsShader: ?function_signatures.glIsShader = null;
    var glIsTexture: ?function_signatures.glIsTexture = null;
    var glLineWidth: ?function_signatures.glLineWidth = null;
    var glLinkProgram: ?function_signatures.glLinkProgram = null;
    var glPixelStorei: ?function_signatures.glPixelStorei = null;
    var glPolygonOffset: ?function_signatures.glPolygonOffset = null;
    var glReadPixels: ?function_signatures.glReadPixels = null;
    var glReleaseShaderCompiler: ?function_signatures.glReleaseShaderCompiler = null;
    var glRenderbufferStorage: ?function_signatures.glRenderbufferStorage = null;
    var glSampleCoverage: ?function_signatures.glSampleCoverage = null;
    var glScissor: ?function_signatures.glScissor = null;
    var glShaderBinary: ?function_signatures.glShaderBinary = null;
    var glShaderSource: ?function_signatures.glShaderSource = null;
    var glStencilFunc: ?function_signatures.glStencilFunc = null;
    var glStencilFuncSeparate: ?function_signatures.glStencilFuncSeparate = null;
    var glStencilMask: ?function_signatures.glStencilMask = null;
    var glStencilMaskSeparate: ?function_signatures.glStencilMaskSeparate = null;
    var glStencilOp: ?function_signatures.glStencilOp = null;
    var glStencilOpSeparate: ?function_signatures.glStencilOpSeparate = null;
    var glTexImage2D: ?function_signatures.glTexImage2D = null;
    var glTexParameterf: ?function_signatures.glTexParameterf = null;
    var glTexParameterfv: ?function_signatures.glTexParameterfv = null;
    var glTexParameteri: ?function_signatures.glTexParameteri = null;
    var glTexParameteriv: ?function_signatures.glTexParameteriv = null;
    var glTexSubImage2D: ?function_signatures.glTexSubImage2D = null;
    var glUniform1f: ?function_signatures.glUniform1f = null;
    var glUniform1fv: ?function_signatures.glUniform1fv = null;
    var glUniform1i: ?function_signatures.glUniform1i = null;
    var glUniform1iv: ?function_signatures.glUniform1iv = null;
    var glUniform2f: ?function_signatures.glUniform2f = null;
    var glUniform2fv: ?function_signatures.glUniform2fv = null;
    var glUniform2i: ?function_signatures.glUniform2i = null;
    var glUniform2iv: ?function_signatures.glUniform2iv = null;
    var glUniform3f: ?function_signatures.glUniform3f = null;
    var glUniform3fv: ?function_signatures.glUniform3fv = null;
    var glUniform3i: ?function_signatures.glUniform3i = null;
    var glUniform3iv: ?function_signatures.glUniform3iv = null;
    var glUniform4f: ?function_signatures.glUniform4f = null;
    var glUniform4fv: ?function_signatures.glUniform4fv = null;
    var glUniform4i: ?function_signatures.glUniform4i = null;
    var glUniform4iv: ?function_signatures.glUniform4iv = null;
    var glUniformMatrix2fv: ?function_signatures.glUniformMatrix2fv = null;
    var glUniformMatrix3fv: ?function_signatures.glUniformMatrix3fv = null;
    var glUniformMatrix4fv: ?function_signatures.glUniformMatrix4fv = null;
    var glUseProgram: ?function_signatures.glUseProgram = null;
    var glValidateProgram: ?function_signatures.glValidateProgram = null;
    var glVertexAttrib1f: ?function_signatures.glVertexAttrib1f = null;
    var glVertexAttrib1fv: ?function_signatures.glVertexAttrib1fv = null;
    var glVertexAttrib2f: ?function_signatures.glVertexAttrib2f = null;
    var glVertexAttrib2fv: ?function_signatures.glVertexAttrib2fv = null;
    var glVertexAttrib3f: ?function_signatures.glVertexAttrib3f = null;
    var glVertexAttrib3fv: ?function_signatures.glVertexAttrib3fv = null;
    var glVertexAttrib4f: ?function_signatures.glVertexAttrib4f = null;
    var glVertexAttrib4fv: ?function_signatures.glVertexAttrib4fv = null;
    var glVertexAttribPointer: ?function_signatures.glVertexAttribPointer = null;
    var glViewport: ?function_signatures.glViewport = null;
};

test "" {
    _ = load;
}
