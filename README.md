# Zig OpenGL Binding

This is a pragmatic binding to different OpenGL versions.

It uses the official [OpenGL Registry](https://github.com/KhronosGroup/OpenGL-Registry) by Khronos to generate the Zig code.

Right now, it does minimal adjustments like removing the `gl` prefix from functions or the `GL_` prefix from constants. Everything else is the same as the C API.

There is a single non-OpenGL function exported:

```zig
pub fn load(load_ctx: anytype, get_proc_address: fn(@TypeOf(load_ctx), [:0]const u8) ?*FunctionPointer) !void {
```

This function will load all OpenGL entry points with the help of `get_proc_address`. It receives the `load_ctx` as well as the function name.

**NOTE:** Please do not reference `zig-opengl` as a submodule or a package. Generate a binding and copy the output of that into your repository and update the file on demand. The OpenGL Registry is just too huge to be used conveniently.

## Example

This example uses [ZWL](https://github.com/Aransentin/ZWL/) by @Aransentin.

```zig
const zwl = @import("zwl");

const Platform = zwl.Platform(…);

pub fn initAndDraw(window: Platform.Window) !void {
  try gl.load(window.platform, Platform.getOpenGlProcAddress);

  while(true) {
    gl.clearColor(1, 0, 1, 1);
    gl.clear(gl.COLOR_BUFFER_BIT);

    try window.present();
  }
}
```

### Usage with mach-glfw

There is an example of `mach-glfw` + `zig-opengl` usage available here: https://github.com/hexops/mach-glfw-opengl-example

## Pregenerated Loaders

This repository contains pre-generated bindings for all extension-free OpenGL versions.

## Generating your own loader

### From source

To generate your own loader, you have to clone this repository and build the generator with `dotnet`:

```sh-session
user@machine:~/zig-opengl$ dotnet run
Usage: generator <registry> <result> <api_version> [<extension>] [<extension>] ...
user@machine:~/zig-opengl$ dotnet run OpenGL-Registry/xml/gl.xml gl3v3.zig GL_VERSION_3_3
Final API has 344 commands and 818 enums types.
user@machine:~/zig-opengl$
```

```sh-session
dotnet run \
  OpenGL-Registry/xml/gl.xml \ # path to the opengl registry
  my_binding.zig             \ # path to the generated file
  GL_VERSION_3_3             \ # feature level, options listed below
  …                            # Add your extensions here, each as a single arg. Or let them out, you don't need extensions
```

Possible feature levels (at the time of writing) are:

- `GL_VERSION_1_0`
- `GL_VERSION_1_1`
- `GL_VERSION_1_2`
- `GL_VERSION_1_3`
- `GL_VERSION_1_4`
- `GL_VERSION_1_5`
- `GL_VERSION_2_0`
- `GL_VERSION_2_1`
- `GL_VERSION_3_0`
- `GL_VERSION_3_1`
- `GL_VERSION_3_2`
- `GL_VERSION_3_3`
- `GL_VERSION_4_0`
- `GL_VERSION_4_1`
- `GL_VERSION_4_2`
- `GL_VERSION_4_3`
- `GL_VERSION_4_4`
- `GL_VERSION_4_5`
- `GL_VERSION_4_6`
- `GL_VERSION_ES_CM_1_0`
- `GL_ES_VERSION_2_0`
- `GL_ES_VERSION_3_0`
- `GL_ES_VERSION_3_1`
- `GL_ES_VERSION_3_2`
- `GL_SC_VERSION_2_0`

## Contribution

This library uses a small C# script that generates the Zig bindings. It is located in `src/Generator.cs`

## What is missing right now?

- Option to specify `core` or `compatibility` profile.
