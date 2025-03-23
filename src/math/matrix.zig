const vector = @import("vector.zig");

pub const Matrix2 = struct {
    m00: f32,
    m01: f32,
    m10: f32,
    m11: f32,

    /// Multiplica a matriz por um Vector2.
    pub fn multiplyVec(self: Matrix2, v: vector.Vector2) vector.Vector2 {
        return vector.Vector2{
            .x = self.m00 * v.x + self.m01 * v.y,
            .y = self.m10 * v.x + self.m11 * v.y,
        };
    }
};
