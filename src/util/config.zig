const std = @import("std");

pub const Config = struct {
    fullscreen: bool,
    width: u32,
    height: u32,
    vsync: bool,

    /// Retorna as configurações padrão.
    pub fn default() Config {
        return Config{
            .fullscreen = false,
            .width = 800,
            .height = 600,
            .vsync = true,
        };
    }
};

/// Simula o carregamento das configurações (retorna o default).
pub fn loadConfig() Config {
    return Config.default();
}
