const std = @import("std");

// Importa os módulos do diretório math
const vector = @import("math/vector.zig");
const matrix = @import("math/matrix.zig");
const quaternion = @import("math/quaternion.zig");

// Importa os módulos do diretório utils
const config = @import("utils/config.zig");
const logger = @import("utils/logger.zig");

// Exemplo: uma função simples que usa um dos módulos.
// Você pode, claro, criar funções que façam uso real dos módulos que criou.
pub export fn add(a: i32, b: i32) i32 {
    // Essa função já está pronta, mas você pode expandi-la ou criar outras.
    return a + b;
}

// Você pode também criar funções de interface para os seus módulos.
// Por exemplo:
pub export fn print_vector_demo() void {
    // Supondo que o módulo vector tenha uma função 'toString' ou similar:
    const vec_str = vector.toString(.{ 1.0, 2.0, 3.0 });
    std.debug.print("Demo: vector = {s}\n", .{vec_str});
}

// Adicione testes para garantir
test "testa função add" {
    try std.testing.expect(add(3, 7) == 10);
}
