const std = @import("std");

const fm = @import("fileManager.zig");
const im = @import("inputManager.zig");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Current inventory:\n\n", .{});

    try fm.ShowInventory();

    try fm.ListCommands(stdout);

    const input: u8 = try im.GetUserChar("\nOperation: ");

    switch (input) {
        'c' => {
            try fm.CreateObject();
        },
        'd' => {
            try stdout.print("Delete object", .{});
        },
        'a' => {
            try stdout.print("Add to object", .{});
        },
        's' => {
            try stdout.print("Subtract from object", .{});
        },

        else => {
            try stdout.print("Invalid character: {c}", .{input});
        },
    }
}
