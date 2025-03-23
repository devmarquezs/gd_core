const std = @import("std");

pub const Quaternion = struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,

    /// Retorna o conjugado do quaternion.
    pub fn conjugate(self: Quaternion) Quaternion {
        return Quaternion{
            .x = -self.x,
            .y = -self.y,
            .z = -self.z,
            .w = self.w,
        };
    }

    /// Normaliza o quaternion.
    pub fn normalize(self: Quaternion) Quaternion {
        const len = std.math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z + self.w * self.w);
        if (len == 0) return self;
        return Quaternion{
            .x = self.x / len,
            .y = self.y / len,
            .z = self.z / len,
            .w = self.w / len,
        };
    }
};
