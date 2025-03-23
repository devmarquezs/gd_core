cmake_minimum_required(VERSION 4.0)
project(gd_core LANGUAGES NONE)

# Define o executável do Zig. Se o zig estiver no PATH, basta usar "zig".
set(ZIG_EXECUTABLE "zig")

# Nome do binário final (apenas "gd_core") e o caminho do arquivo fonte principal.
set(TARGET_NAME "gd_core.exe")
set(MAIN_SOURCE "${CMAKE_SOURCE_DIR}/src/main.zig")

# Cria um target customizado para compilar o projeto com Zig.
add_custom_target(${TARGET_NAME}_build ALL
    COMMAND ${ZIG_EXECUTABLE} build-exe ${MAIN_SOURCE} -O ReleaseSafe -femit-bin=${CMAKE_BINARY_DIR}/${TARGET_NAME}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    COMMENT "Compilando ${TARGET_NAME} usando Zig"
)

# Instala o binário (opcional)
install(FILES ${CMAKE_BINARY_DIR}/${TARGET_NAME} DESTINATION bin)

# Inclui a pasta de teste
add_subdirectory(tests)

