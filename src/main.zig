const std = @import("std");

const fm = @import("fileManager.zig");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    _ = stdin;

    try stdout.print("Current inventory:\n\n", .{});

    try fm.ShowInventory();

    try stdout.print("\n\nSelect operation:\n", .{});

    try fm.ListCommands(stdout);
}
