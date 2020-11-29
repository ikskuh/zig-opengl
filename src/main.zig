const std = @import("std");

const xml = @import("xml.zig");

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const global_allocator = &gpa.allocator;

pub fn main() !void {
    defer _ = gpa.deinit();

    var file = try std.fs.cwd().openFile("/home/felix/projects/OpenGL-Registry/xml/gl.xml", .{});
    defer file.close();

    var stream = file.reader();

    var doc = xml.parse(global_allocator, false, stream);
    defer doc.deinit();
}
