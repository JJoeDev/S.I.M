const std = @import("std");

const fm = @import("fileManager.zig");
const im = @import("inputManager.zig");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Current inventory:\n\n", .{});

    try fm.ShowInventory();

    try stdout.print("\n\nSelect operation:\n", .{});

    try fm.ListCommands(stdout);

    const input: u8 = try im.GetUserChar("Operation: ");

    _ = input;
}
