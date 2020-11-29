const std = @import("std");

pub const Document = struct {
    const Self = @This();

    arena: std.heap.ArenaAllocator,

    version: []const u8,
    standalone: bool,

    root: Node,

    pub fn deinit(self: *Self) void {
        self.arena.deinit();
        self.* = undefined;
    }
};

pub const Node = union(enum) {
    element: Element,
    text: []const u8,
    comment: []const u8,
};

pub const Element = struct {
    namespace: []const u8,
    tag: []const u8,

    attributes: std.StringHashMap([]const u8),

    children: []Node,
};

pub fn parse(allocator: *std.mem.Allocator, parse_comments: bool, stream: anytype) !Document {
    var arena = std.heap.ArenaAllocator.init(allocator);
    errdefer arena.deinit();

    var doc = Document{
        .arena = arena,

        .version = undefined,
        .standalone = undefined,

        .root = undefined,
    };

    doc.root = Node{
        .element = try parseElement(&arena.allocator, parse_comments, stream),
    };

    return doc;
}
