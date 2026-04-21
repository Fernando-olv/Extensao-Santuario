# Extensão Santuário

Este projeto foi desenvolvido de forma **voluntária e sem fins lucrativos**, com o objetivo de **gerar valor para a comunidade** e **consolidar experiência prática em desenvolvimento de software**, aplicando boas práticas de arquitetura, organização de código e UI/UX.

---

## Sobre o Projeto

A **Extensão Santuário** é um MVP mobile desenvolvido em **Flutter**, baseado fielmente (**1:1**) no protótipo disponibilizado no Figma:

🔗 https://www.figma.com/design/KgC1OX4weixbznEcWmlxqa/WireFrame

O projeto contempla a implementação completa de:

- Navegação
- Autenticação
- Estrutura modular da aplicação

---

## Fluxo de Autenticação

- **Login** (`/`)
- **Cadastro** (`/register`)

---

## Navegação Principal (BottomNavigationBar)

- Home (`/home`)
- Notícias (`/noticias`)
- Serviços (`/servicos`)
- Romarias (`/romarias`)
- Transmissões (`/transmissoes`)

---

## Navegação Secundária (Drawer)

### Conteúdo Institucional

- Notícia (`/noticia`)
- História (`/historia`)
- Equipe (`/equipe`)
- Curiosidades (`/curiosidades`)
- Redentoristas (`/redentoristas`)
- Conheça o Santuário (`/conheca-santuario`)

### Funcionalidades

- Galeria (`/galeria`)
- Casamentos (`/casamentos`)
- Batizados (`/batizados`)
- Vela Virtual (`/vela-virtual`)
- Intenção de Missa (`/intencao-missa`)
- Secretaria (`/secretaria`)

### 📅 Eventos e Conteúdo Dinâmico

- Calendário de Eventos (`/calendario-eventos`)
- Próximas Romarias (`/proximas-romarias`)
- Cadastrar Romarias (`/cadastrar-romarias`)
- Últimas Romarias (`/ultimas-romarias`)
- Próxima Transmissão (`/proxima-transmissao`)
- Última Transmissão (`/ultima-transmissao`)
- Reflexão Dominical (`/reflexao-dominical`)

---

## Execução Local

### Instalar dependências

```bash
flutter pub get
```

### Rodar o projeto

```bash
flutter run
```

---

## Execução de Testes

Para garantir consistência e evitar problemas de ambiente:

### Verifique o usuário atual

```bash
whoami
```

> Caso esteja como `root`, troque para seu usuário padrão antes de executar os testes.

### Sequência recomendada

```bash
flutter clean
flutter pub get
flutter test
```

---

## Arquitetura e Boas Práticas

- Uso de **design tokens compartilhados**
- Componentização com **widgets reutilizáveis**
- Estrutura **modular por feature**
- Separação clara entre navegação principal e secundária

### Decisão de UX

A navegação foi planejada para evitar sobrecarga visual:

- **BottomNavigationBar** → acesso rápido às principais funcionalidades  
- **Drawer (menu lateral)** → funcionalidades complementares e conteúdo institucional  

---

## Objetivo do Projeto

Além de atender a uma necessidade real da comunidade, este projeto também tem como foco:

- Evolução técnica em Flutter
- Aplicação de boas práticas de engenharia de software
