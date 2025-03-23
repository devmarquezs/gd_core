const std = @import("std");

pub const Vector2 = struct {
    x: f32,
    y: f32,

    /// Soma dois vetores.
    pub fn add(self: Vector2, other: Vector2) Vector2 {
        return Vector2{
            .x = self.x + other.x,
            .y = self.y + other.y,
        };
    }

    /// Multiplica o vetor por um escalar.
    pub fn scale(self: Vector2, factor: f32) Vector2 {
        return Vector2{
            .x = self.x * factor,
            .y = self.y * factor,
        };
    }

    /// Calcula o comprimento do vetor.
    pub fn length(self: Vector2) f32 {
        return std.math.sqrt(self.x * self.x + self.y * self.y);
    }
};
