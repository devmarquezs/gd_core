const std = @import("std");

pub fn build(b: *std.Build) void {
    const mode = b.standardOptimizeOption(.{});
    const target = b.standardTargetOptions(.{});

    // Compila o executável principal
    const main_exe = b.addExecutable(.{
        .name = "gd_core",
        .root_source_file = .{ .cwd_relative = "src/main.zig" },
        .target = target,
        .optimize = mode,
    });

    b.installArtifact(main_exe);

    // Lista de testes
    const tests = [_][]const u8{
        "vector_test",
        "matrix_test",
        "quaternion_test",
        "config_test",
        "logger_test",
    };

    for (tests) |test_name| {
        const test_path = std.fmt.allocPrint(b.allocator, "tests/{s}.zig", .{test_name}) catch unreachable;
        const test_bin = b.addTest(.{
            .root_source_file = .{ .cwd_relative = test_path },
            .target = target,
            .optimize = mode,
        });

        b.installArtifact(test_bin);
    }
}
