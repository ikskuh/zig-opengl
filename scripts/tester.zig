const std = @import("std");
const gl = @import("opengl");

export fn dummy() void {
    {
        @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
        std.testing.refAllDecls(gl);
    }

    gl.load({}, fakeLoader) catch {};
}

comptime {
    @export(gl.getIntegerv, .{ .name = "glGetIntegerv" });
}

fn fakeLoader(_: void, name: [:0]const u8) ?gl.FunctionPointer {
    return magic_loader(name.ptr);
}

export var magic_loader: *const fn (name: [*:0]const u8) ?gl.FunctionPointer = undefined;
