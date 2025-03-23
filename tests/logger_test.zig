const std = @import("std");
const api = @import("src/api.zig");
const logger = api;

test "Teste do logger" {
    // Este teste simplesmente chama o logger.
    // Se a função não abortar, consideramos que passou.
    logger.log("Teste do logger: mensagem de exemplo");
}
