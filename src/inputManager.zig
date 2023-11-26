const std = @import("std");

pub fn GetUserChar(msg: []const u8) !u8 {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();

    try stdout.print("{s}", .{msg});

    var input: u8 = 0;
    input = try stdin.readByte(); // input = u8

    try stdout.print("inp: {c}", .{input});

    return input;
}
