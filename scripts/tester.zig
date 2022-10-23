const std = @import("std");
const gl = @import("opengl");

export fn dummy() void {
    {
        @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
        std.testing.refAllDecls(gl);
    }

    gl.load({}, fakeLoader) catch {};
}

fn fakeLoader(_: void, name: [:0]const u8) ?gl.FunctionPointer {
    _ = name;
    return null;
}
