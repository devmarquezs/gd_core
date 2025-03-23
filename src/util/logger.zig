const std = @import("std");

/// Exibe uma mensagem de log no console.
pub fn log(msg: []const u8) void {
    std.debug.print("[LOG] {s}\n", .{msg});
}
