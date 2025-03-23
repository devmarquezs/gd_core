# gl_core

**gl_core** é o núcleo matemático do projeto **GDarkness**, fornecendo funcionalidades essenciais para cálculo de vetores, matrizes e quaternions. Esta biblioteca servirá como base para futuras expansões, incluindo sua integração em uma engine de jogos.

## Estrutura do Projeto

```
|-- gd_core/
    |-- src/          # Implementação principal
        |-- math/     # Código relacionado a vetores, matrizes e quaternions
        |-- utils/    # ferramentas e config 
    |-- tests/        # Testes unitários
    |-- examples/     # Exemplos de uso
    |-- CMakeLists.txt  # Configuração de build com CMake + Ninja
```

## Como Compilar

Este projeto tambem utiliza **CMake** e **Ninja** para a compilação.

```sh
mkdir build && cd build
cmake -G Ninja ..
ninja
```

## Como Executar os Testes

Para rodar os testes unitários:

```sh
ninja test
```

## Erros e Correções 

**problemas de compilação foram encontrados nos testes, possivel erro na importação do modulo** 

```sh
correção em andamento...
```

## Como Contribuir

1. Fork este repositório
2. Crie uma branch para sua feature/bugfix (`git checkout -b minha-feature`)
3. Commit suas alterações (`git commit -m "Adiciona nova feature"`)
4. Envie um push para o repositório remoto (`git push origin minha-feature`)
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

