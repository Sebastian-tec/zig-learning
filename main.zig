// Import a module from the standard library.
const std = @import("std");
// Import a module from local file system.
const helper = @import("./library.zig");

pub fn main() void {
    // Instantiate a struct with 2 fields.
    const me = Person{ .name = "Sebastian", .age = 20 };

    // Print a field from the struct
    std.debug.print("Hello {s}", .{me.name});
    // std.debug.print("{s}", .{helper.getGreeting(me.name)});
    // std.debug.print("Above 18: {b}", helper.checkAge(me.age));
}

// Struct with 2 fields. I'm not sure how to make it a type yet.'
const Person = struct { name: []const u8, age: i32 };
