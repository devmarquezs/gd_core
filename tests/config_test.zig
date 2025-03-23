const std = @import("std");
const api = @import("src/api.zig");
const config = api;

test "Teste de configuração padrão" {
    const cfg = config.loadConfig();
    try std.testing.expect(cfg.fullscreen == false);
    try std.testing.expect(cfg.width == 800);
    try std.testing.expect(cfg.height == 600);
    try std.testing.expect(cfg.vsync == true);
}
