# 🎯 dartpedia

Repositório de estudos seguindo o [tutorial oficial do Dart](https://dart.dev/learn/tutorial), que guia o desenvolvimento de uma aplicação CLI completa do zero.

---

## 📖 Sobre o projeto

O **dartpedia** acompanha cada capítulo do tutorial da linguagem Dart, construindo progressivamente uma ferramenta de linha de comando. O projeto cobre desde a criação do primeiro `Hello, Dart!` até conceitos avançados como programação orientada a objetos, tratamento de erros, testes e requisições HTTP.

---

## 🗂️ Estrutura do repositório

```
dartpedia/
├── cli/        # Projeto principal — aplicação CLI desenvolvida ao longo do tutorial
└── cliente/    # Projeto cliente — desenvolvido em capítulos posteriores do tutorial
```

---

## 🚀 Como executar

### Pré-requisitos

- [Dart SDK](https://dart.dev/get-dart) instalado (versão 3.x ou superior)

Verifique sua instalação:

```bash
dart --version
```

### Rodando o projeto `cli`

```bash
cd cli
dart run
```

### Rodando o projeto `cliente`

```bash
cd cliente
dart run
```

---

## 📚 Conteúdo do tutorial

Os capítulos cobertos neste repositório incluem:

| # | Capítulo | Conceitos abordados |
|---|----------|---------------------|
| 1 | Build your first app | `dart create`, `dart run`, função `main` |
| 2 | Add interactivity | Argumentos de linha de comando, `const` |
| 3 | Write asynchronous code | `async`/`await`, `Future` |
| 4 | Organize code with packages and libraries | `pubspec.yaml`, `import`, estrutura de pacotes |
| 5 | Define relationships with classes | OOP, classes abstratas, herança |
| 6 | Handle errors gracefully | Exceções, `try`/`catch`/`finally` |
| 7 | Extend your app with enums and extensions | `enum`, `extension` |
| 8 | Polish your CLI app | UX de CLI, formatação de saída |
| 9 | Work with JSON data | Serialização e desserialização de JSON |
| 10 | Test your app & code | Testes unitários com `package:test` |
| 11 | Fetch data from the internet | Requisições HTTP, `package:http` |
| 12 | Add logging | `package:logging`, debugging |

---

## 🛠️ Tecnologias

- **Linguagem:** [Dart](https://dart.dev/)
- **SDK mínimo:** Dart 3.x

---

## 🔗 Referências

- [Tutorial oficial do Dart](https://dart.dev/learn/tutorial)
- [Documentação do Dart](https://dart.dev/docs)
- [pub.dev — repositório de pacotes](https://pub.dev)
