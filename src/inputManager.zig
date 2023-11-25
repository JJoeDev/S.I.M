const std = @import("std");

pub fn GetUserChar(msg: []const u8) !u8 {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();

    try stdout.print("{s}", .{msg});

    const input = try stdin.readByte();

    return input;
}
