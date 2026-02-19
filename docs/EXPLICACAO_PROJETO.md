# Explicacao detalhada do projeto

Este arquivo descreve, de forma bem orientativa, o que foi construido no projeto Flutter ate agora. A ideia e servir como roteiro de estudo e revisao.

## 1) Visao geral

- Projeto Flutter chamado `tecsis`.
- Estrutura criada pelo template padrao do Flutter (pastas `android/`, `ios/`, `web/`, `windows/`, `linux/`, `macos/`).
- A parte principal do que o professor implementou fica em `lib/`.
- A navegacao principal e feita por um `NavigationBar` na parte de baixo (estilo abas).

## 2) Configuracoes principais (pubspec.yaml)

Arquivo: `pubspec.yaml`

- `name: tecsis` define o nome do app.
- `version: 1.0.0+1` define versao e build.
- Dependencias usadas:
  - `flutter` (SDK principal).
  - `cupertino_icons` (icones estilo iOS, comum em apps Flutter).
- `uses-material-design: true` habilita icones/material design no app.

## 3) Ponto de entrada do app

Arquivo: `lib/main.dart`

- A funcao `main()` chama `runApp(const MyApp())`.
- `MyApp` e o widget raiz da aplicacao.
- `MaterialApp` e configurado com:
  - `debugShowCheckedModeBanner: false` para esconder o banner de debug.
  - `title: 'Flutter Demo'` (titulo do app).
  - `theme: ThemeData(colorScheme: ColorScheme.fromSeed(...))`
    - Define um tema base usando uma cor semente (deepPurple).
  - `home: const MainPage()` define a tela inicial.

Conceito: todo app Flutter precisa de um widget raiz (aqui, `MyApp`) e uma tela inicial (aqui, `MainPage`).

## 4) Tela principal e navegacao

Arquivo: `lib/mainpage/main_page.dart`

A `MainPage` e um `StatefulWidget` porque o app precisa mudar de tela quando o usuario toca nas abas.

### 4.1) Estado e indice

- Variavel privada `_index` guarda qual pagina esta ativa.
- O valor muda quando o usuario toca no `NavigationBar`.

### 4.2) Estrutura da tela

A tela principal e composta por:

- `SafeArea`: evita que o conteudo fique escondido por notch, barra de status, etc.
- `Padding` com `EdgeInsets.all(20.0)` para dar espaco interno.
- `Scaffold`: base padrao de tela no Flutter (appBar, body, bottomNavigationBar).

### 4.3) Body dinamico

O `body` escolhe uma tela a partir de uma lista:

```dart
[
  DashboardPage(),
  InsumosPage(),
  EstoquePage(),
  UsuariosPage(),
][_index]
```

- Se `_index` for 0, mostra `DashboardPage`.
- Se `_index` for 1, mostra `InsumosPage`.
- Se `_index` for 2, mostra `EstoquePage`.
- Se `_index` for 3, mostra `UsuariosPage`.

Conceito: isso e uma forma simples de trocar de pagina sem usar rotas ainda.

### 4.4) NavigationBar

- `NavigationBar` recebe uma lista de `NavigationDestination`.
- Cada destino possui um `icon` e um `label`.
- O evento `onDestinationSelected` chama `setState` e atualiza o `_index`.

### 4.5) AppBar

- `AppBar` com cor de fundo `Colors.lightGreenAccent`.
- `centerTitle: true` centraliza o titulo.
- `title: Text('Controle de Insumos')`.
- `actions`:
  - Botao de perfil (icone `person_2_rounded`) que imprime no console.
  - Botao de carrinho (icone `shopping_cart_rounded`) sem acao ainda.

Conceito: o `AppBar` organiza titulo e acoes rapidas no topo.

## 5) Paginas atuais

Todas as paginas sao `StatelessWidget` simples, usadas como placeholders visuais.

### 5.1) Dashboard

Arquivo: `lib/dashboard/pages/dashboard_page.dart`

- Um `Container` 250x250, cor vermelha.
- Texto centralizado: `Dashboard`.

### 5.2) Insumos

Arquivo: `lib/insumos/pages/insumos_page.dart`

- Um `Container` 250x250, cor amarela.
- Texto centralizado: `Insumos`.

### 5.3) Estoque

Arquivo: `lib/estoques/pages/estoque_page.dart`

- Um `Container` 250x250, cor verde.
- Texto centralizado: `Estoque`.

### 5.4) Usuarios

Arquivo: `lib/usuarios/pages/usuarios_page.dart`

- Um `Container` 250x250, cor azul.
- Texto centralizado: `Usuarios`.

Conceito: essas telas sao apenas marcadores visuais para confirmar a navegacao. O proximo passo e substituir cada `Container` por telas reais com formularios, listas e dados.

## 6) Estrutura de pastas em lib/

```
lib/
  main.dart
  mainpage/
    main_page.dart
  dashboard/
    pages/
      dashboard_page.dart
  insumos/
    pages/
      insumos_page.dart
  estoques/
    pages/
      estoque_page.dart
  usuarios/
    pages/
      usuarios_page.dart
```

Pontos de estudo:

- Separacao por modulos (dashboard, insumos, estoques, usuarios).
- Cada modulo possui a pasta `pages/`.
- Esse padrao facilita o crescimento do app (adicionar `models/`, `services/`, etc).

## 7) O que foi praticado ate aqui

- Estrutura basica de um app Flutter.
- Uso de `MaterialApp` e `ThemeData`.
- Criacao de `StatefulWidget` e controle de estado com `setState`.
- Navegacao simples via `NavigationBar`.
- Organizacao por pastas de funcionalidade.
- Uso de `Scaffold`, `AppBar`, `SafeArea` e `Padding`.

## 8) Proximos passos sugeridos (para estudo)

1) Substituir os `Container` por telas reais.
2) Criar modelos (ex: `Insumo`, `Usuario`) em `models/`.
3) Implementar listas (`ListView`) e formularios (`TextField`, `Form`).
4) Adicionar rotas nomeadas para telas extras.
5) Adicionar persistencia (ex: SQLite ou API).

## 9) Como revisar este projeto

- Releia `main.dart` para lembrar o fluxo de inicializacao.
- Entenda como o `_index` controla a pagina atual.
- Estude o `NavigationBar` e o uso do `setState`.
- Treine criando uma nova aba e uma nova pagina.
- Troque um `Container` por um layout mais completo.

---

Se quiser, posso expandir este arquivo com exemplos de codigo, diagramas de navegacao, ou comentarios mais detalhados sobre cada widget usado.
