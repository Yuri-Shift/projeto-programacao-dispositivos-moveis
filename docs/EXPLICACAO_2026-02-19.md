# Explicacao da aula - 2026-02-19

## 1) Objetivo da aula

- Construir a base do app Flutter e organizar a navegacao por abas.
- Criar as telas iniciais (placeholders) para cada modulo do projeto.

## 2) O que foi construido

- Estrutura inicial do aplicativo com `MaterialApp` e tema.
- Tela principal (`MainPage`) com `NavigationBar`.
- Quatro paginas simples: Dashboard, Insumos, Estoque e Usuarios.
- AppBar com titulo e botoes de acao.

## 3) Arquivos criados ou modificados

- `lib/main.dart` (ponto de entrada do app)
- `lib/mainpage/main_page.dart` (tela principal e navegacao)
- `lib/dashboard/pages/dashboard_page.dart`
- `lib/insumos/pages/insumos_page.dart`
- `lib/estoques/pages/estoque_page.dart`
- `lib/usuarios/pages/usuarios_page.dart`

## 4) Conceitos e widgets usados

- `runApp`, `MaterialApp`, `ThemeData`
- `StatefulWidget` e `setState`
- `Scaffold`, `AppBar`, `SafeArea`, `Padding`
- `NavigationBar`, `NavigationDestination`
- `Container`, `Center`, `Text`

## 5) Passo a passo (como foi feito)

1) Criar o `MaterialApp` em `main.dart` e apontar `home` para `MainPage`.
2) Em `MainPage`, controlar a pagina ativa com a variavel `_index`.
3) Montar uma lista de paginas e acessar pelo indice atual.
4) Criar o `NavigationBar` e atualizar `_index` com `setState`.
5) Criar paginas simples (placeholders) para cada modulo.
6) Ajustar `AppBar` com titulo e botoes de acao.

## 6) Pontos de atencao

- O `NavigationBar` nao usa rotas ainda; a troca e feita pela lista de widgets.
- As paginas atuais sao apenas marcadores visuais, sem dados reais.
- O tema esta simples; pode ser refinado nas proximas aulas.

## 7) Exercicios sugeridos

1) Trocar um `Container` por um layout com `Column` e `Card`.
2) Criar uma nova aba chamada `Relatorios`.
3) Personalizar o `ThemeData` (cores e tipografia).

## 8) Duvidas comuns

- Por que `MainPage` e `StatefulWidget`? Porque precisa mudar de tela quando o usuario toca nas abas.
- Por que usar `SafeArea`? Para evitar que o conteudo fique escondido em areas do sistema.

## 9) Resumo rapido

- App configurado com tema e tela inicial.
- Navegacao por abas criada.
- Quatro paginas base prontas para evoluir.

---

## Observacao sobre a aula 0

- A aula 0 foi dedicada a preparar o ambiente e executar um `hello world` basico no Flutter.
- Nesta aula 1, foi montada a estrutura inicial do app e as primeiras telas.

---

Checklist da aula:

- [ ] Entendi o objetivo
- [ ] Sei onde o codigo foi alterado
- [ ] Consigo explicar o fluxo principal
- [ ] Consigo repetir os passos sozinho
- [ ] Fiz pelo menos 1 exercicio sugerido
