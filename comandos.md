# Guia de Comandos do Projeto gd_core

Este documento é destinado a ajudar os novatos e interessados a configurar e compilar o projeto utilizando CMake, Ninja e Zig.

---

## Comandos do CMake

### 1. Gerar os Arquivos de Build com Ninja
Gera a pasta `build/` com os arquivos de build utilizando o gerador Ninja:
```bash
cmake -G "Ninja" -B build
```
### 2. Compilar o Projeto Inteiro
Compila todos os targets definidos no CMake:
```
cmake --build build
```
### 3. Compilar um Alvo Específico
Compila apenas um target específico (substitua <nome_do_target> pelo nome do target desejado):
```
cmake --build build --target <nome_do_target>
```
Exemplo:
```
cmake --build build --target gd_core_build
```
### 4. Instalar o Projeto (Opcional)
Copia o binário para o diretório de instalação definido (por exemplo, uma pasta bin):
```
cmake --build build --target install
```
### 5. Habilitar e Registrar Testes via CMake
No CMakeLists.txt principal ou na pasta de testes, adicione:

- Para habilitar testes:
```
enable_testing()
```
- Para registrar um teste:
```
add_test(NAME vector_test COMMAND ${CMAKE_BINARY_DIR}/vector_test.exe)
```
### 6. Incluir Subdiretórios no Fluxo do CMake
Inclua o diretório dos testes (por exemplo, a pasta tests):
```
add_subdirectory(tests)
```

## Comandos do Zig

### 1. Compilar um Executável com Otimizações
Compila o executável a partir do arquivo de entrada (por exemplo, src/main.zig), com otimizações:
```
zig build-exe src/main.zig -O ReleaseSafe -femit-bin=build/gd_core
```
### 2. Compilar e Executar um Teste
Compila e roda os testes definidos em um arquivo, garantindo que o diretório src é a raiz para importações:
```
zig test tests/vector_test.zig -I src
```
### 3. Compilar e Executar Rapidamento um Arquivo
Compila e executa um arquivo Zig sem salvar o binário:
```
zig run src/main.zig
```
### 4. Usar o Build System Nativo do Zig (Opcional)
Se o projeto usar o build system nativo (definido em build.zig), basta executar:
```
zig build
```
### 5. Outros Comandos Úteis

- Verificar a versão do Zig:
```
zig version
```
- Formatar o código:
```
zig fmt <arquivo.zig>
```
## Importação nos Arquivos de Teste

Como o comando de compilação dos testes utiliza a flag -I src, os módulos devem ser importados a partir da raiz src. Por exemplo, se o módulo vector.zig está no diretório src/math/vector.zig, então no seu arquivo de teste (tests/vector_test.zig) faça:
```
const vector = @import("math/vector.zig");
```
- Para matrix:
```
const matrix = @import("math/matrix.zig");
```
- Para quaternion:
```
const quaternion = @import("math/quaternion.zig");
```
- Para config:
```
const config = @import("utils/config.zig");
```
- Para logger:
```
const logger = @import("utils/logger.zig");
```

## Este guia serve para padronizar os processos de build e teste do projeto. Sinta-se à vontade para ajustá-lo conforme as suas necessidades e do projeto.