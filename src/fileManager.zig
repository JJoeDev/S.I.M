const std = @import("std");

const fs = std.fs;

pub fn ListCommands(writer: fs.File.Writer) !void { // getStdOut.writer() returns writer from fs
    const cmd1 = "c: create new object\n"; // *const [21:0]u8 | \n is one char
    const cmd2 = "d: delete object from inventory\n"; // *const [32:0]u8 | \n is one char
    const cmd3 = "a: add one to object in inventory\n";
    const cmd4 = "s: subtract one from object in inventory\n";

    try writer.print("{s}{s}{s}{s}", .{ cmd1, cmd2, cmd3, cmd4 });
}

pub fn ShowInventory() !void {
    const inventory = try fs.cwd().openFile("Inventory.txt", .{});
    defer inventory.close();

    var bufReader = std.io.bufferedReader(inventory.reader());
    var inStream = bufReader.reader();

    var buf: [1024]u8 = undefined;
    while (try inStream.readUntilDelimiterOrEof(&buf, '\n')) |line| {
        std.debug.print("{s}\n", .{line});
    }
}
