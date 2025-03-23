const std = @import("std");
const api = @import("src/api.zig");
const vector = api;
const matrix = api;

test "Teste de multiplicação com matriz identidade" {
    const v = vector.Vector2{ .x = 5.0, .y = 7.0 };
    const mIdentity = matrix.Matrix2{
        .m00 = 1.0,
        .m01 = 0.0,
        .m10 = 0.0,
        .m11 = 1.0,
    };
    const vTransformed = mIdentity.multiplyVec(v);
    try std.testing.expect(vTransformed.x == v.x);
    try std.testing.expect(vTransformed.y == v.y);
}

test "Teste de multiplicação com matriz de escala" {
    const v = vector.Vector2{ .x = 2.0, .y = 3.0 };
    // Matriz de escala: multiplica x por 2 e y por 3.
    const mScale = matrix.Matrix2{
        .m00 = 2.0,
        .m01 = 0.0,
        .m10 = 0.0,
        .m11 = 3.0,
    };
    const vTransformed = mScale.multiplyVec(v);
    try std.testing.expect(vTransformed.x == 4.0);
    try std.testing.expect(vTransformed.y == 9.0);
}
