// Import a module from the standard library.
const std = @import("std");
// Import a module from local file system.
const helper = @import("./library.zig");

pub fn main() void {
    std.debug.print("{s}", .{helper.getGreeting(Person.name)});
}

// Struct with 2 fields. I'm not sure how to make it a type yet.'
const Person = struct { name: []const u8 = "Sebastian", age: i32 = 11 };
