const std = @import("std");
const api = @import("src/api.zig");
const vector = api;

test "Teste de adição de vetores" {
    const v1 = vector.Vector2{ .x = 1.0, .y = 2.0 };
    const v2 = vector.Vector2{ .x = 3.0, .y = 4.0 };
    const vResult = v1.add(v2);
    try std.testing.expect(vResult.x == 4.0);
    try std.testing.expect(vResult.y == 6.0);
}

test "Teste de multiplicação por escalar" {
    const v = vector.Vector2{ .x = 2.0, .y = 3.0 };
    const vScaled = v.scale(2.0);
    try std.testing.expect(vScaled.x == 4.0);
    try std.testing.expect(vScaled.y == 6.0);
}

test "Teste do comprimento do vetor" {
    const v = vector.Vector2{ .x = 3.0, .y = 4.0 };
    // Usando aproximação para comparações com floats
    try std.testing.expect(std.math.approxEqual(v.length(), 5.0, 0.001));
}
