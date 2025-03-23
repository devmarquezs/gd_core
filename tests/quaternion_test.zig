const std = @import("std");
const api = @import("src/api.zig");
const quaternion = api;

test "Teste de normalização de quaternion" {
    const q = quaternion.Quaternion{ .x = 2.0, .y = 0.0, .z = 0.0, .w = 0.0 };
    const qNorm = q.normalize();
    const len = std.math.sqrt(qNorm.x * qNorm.x + qNorm.y * qNorm.y + qNorm.z * qNorm.z + qNorm.w * qNorm.w);
    try std.testing.expect(std.math.approxEqual(len, 1.0, 0.001));
}

test "Teste de conjugado de quaternion" {
    const q = quaternion.Quaternion{ .x = 1.0, .y = -2.0, .z = 3.0, .w = 4.0 };
    const qConj = q.conjugate();
    try std.testing.expect(qConj.x == -q.x);
    try std.testing.expect(qConj.y == -q.y);
    try std.testing.expect(qConj.z == -q.z);
    try std.testing.expect(qConj.w == q.w);
}
