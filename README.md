# Zig OpenGL Binding

This is a pragmatic binding to different OpenGL versions.

It uses the official [OpenGL Registry](https://github.com/KhronosGroup/OpenGL-Registry) by Khronos to generate the Zig code.

Right now, it does minimal adjustments like removing the `gl` prefix from functions or the `GL_` prefix from constants. Everything else is the same as the C API.

There is a single non-OpenGL function exported:
```zig
pub fn load(load_ctx: anytype, get_proc_address: fn(@TypeOf(load_ctx), [:0]const u8) ?*c_void) !void {
```
This function will load all OpenGL entry points with the help of `get_proc_address`. It receives the `load_ctx` as well as the function name.

## Example

This example uses [ZWL](https://github.com/Aransentin/ZWL/) by @Aransentin.

```zig
const zwl = @import("zwl");

const Platform = zwl.Platform(…);

pub fn initAndDraw(window: Platform.Window) !void 
{
  try gl.load(window.platform, Platform.getOpenGlProcAddress);

  while(true) {
    gl.clearColor(1, 0, 1, 1);
    gl.clear(gl.COLOR_BUFFER_BIT);

    try window.present();
  }
}
```

## Development

This library uses a small C# script that generates the Zig bindings.

## What is missing right now?
- No option to create 