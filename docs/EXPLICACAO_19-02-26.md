# Explicacao da aula - 19-02-26

## 1) Objetivo da aula

- Revisar e explicar com mais detalhes o que foi feito na aula 1.
- Iniciar a organizacao de um modelo de dados e servico para Insumos.
- Adicionar dependencias para trabalhar com SQLite no Flutter.

## 2) O que foi construido

- Revisao guiada da estrutura do app (abas, telas e AppBar).
- Criacao do modelo `Insumos` com metodos utilitarios.
- Inicio do servico de banco de dados para Insumos (SQLite).
- Inclusao das dependencias `sqflite`, `path` e `path_provider`.

## 3) Arquivos criados ou modificados

- `lib/insumos/models/insumos.dart`
- `lib/insumos/servicos/insumos_servicos.dart`
- `pubspec.yaml`
- `pubspec.lock`

## 4) Conceitos e widgets usados

- Modelo de dados (classe com propriedades e conversao para Map/JSON).
- Dependencias externas via `pubspec.yaml`.
- SQLite no Flutter usando `sqflite`.
- Localizacao segura de arquivos com `path_provider`.

## 5) Passo a passo (como foi feito)

1) Revisar a estrutura da aula 1 e reforcar o fluxo de navegacao.
2) Criar a classe `Insumos` com:
   - campos (id, nome, descricao, estoqueMinimo, categoria, unidadeMedida).
   - `copyWith`, `toMap`, `fromMap`, `toJson`, `fromJson`.
3) Iniciar o servico `InsumosServicos` para abrir/criar o banco.
4) Adicionar dependencias no `pubspec.yaml`:
   - `sqflite` (acesso ao SQLite).
   - `path` (montagem correta de caminhos).
   - `path_provider` (pasta de documentos do app).

## 6) Atalhos do VS Code anotados

- `STL` (atalho para gerar estrutura basica de um `StatelessWidget`).
- `Ctrl + Space` para auto-completar e acessar opcoes de geracao.
- `generate data class` para criar modelos com utilitarios automaticamente.

## 7) Pontos de atencao

- O servico de banco ainda esta em construcao e sera completado na proxima aula.
- O modelo `Insumos` foi criado manualmente para treino, mas pode ser gerado.
- Apos adicionar dependencias, sempre rodar `flutter pub get`.

## 8) Exercicios sugeridos

1) Completar o servico de banco com metodos CRUD.
2) Criar um formulario simples de cadastro de insumos.
3) Testar a conversao `toMap` e `fromMap` com exemplos reais.

## 9) Resumo rapido

- Aula focada em revisao e inicio de estrutura de dados.
- Modelo `Insumos` criado.
- Dependencias de SQLite adicionadas.

---

Checklist da aula:

- [ ] Entendi o objetivo
- [ ] Sei onde o codigo foi alterado
- [ ] Consigo explicar o fluxo principal
- [ ] Consigo repetir os passos sozinho
- [ ] Fiz pelo menos 1 exercicio sugerido
