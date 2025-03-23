// src/api.zig

// Reexporta os módulos de math:
pub const vector = @import("math/vector.zig");
pub const matrix = @import("math/matrix.zig");
pub const quaternion = @import("math/quaternion.zig");

// Reexporta os módulos de utils:
pub const config = @import("utils/config.zig");
pub const logger = @import("utils/logger.zig");
