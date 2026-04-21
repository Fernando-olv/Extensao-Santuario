# Extensao-Santuario

Este projeto foi desenvolvido de forma voluntaria, sem fins lucrativos, com foco em gerar valor para a comunidade e adquirir experiencia pratica em desenvolvimento de software.

## Extensao Santuario (Flutter)

1:1-oriented Flutter MVP implementation derived from the Figma file:
`https://www.figma.com/design/KgC1OX4weixbznEcWmlxqa/WireFrame`.

## Implemented authentication flow

- Login (`/`)
- Register (`/register`)

## Primary navigation (BottomNavigationBar)

- Home (`/home`)
- Notícias (`/noticias`)
- Serviços (`/servicos`)
- Romarias (`/romarias`)
- Transmissões (`/transmissoes`)

## Secondary navigation (Drawer)

- Notícia (`/noticia`)
- História (`/historia`)
- Equipe (`/equipe`)
- Curiosidades (`/curiosidades`)
- Redentoristas (`/redentoristas`)
- Conheça o Santuário (`/conheca-santuario`)
- Galeria (`/galeria`)
- Casamentos (`/casamentos`)
- Batizados (`/batizados`)
- Vela Virtual (`/vela-virtual`)
- Intenção de Missa (`/intencao-missa`)
- Calendário de Eventos (`/calendario-eventos`)
- Secretaria (`/secretaria`)
- Próximas Romarias (`/proximas-romarias`)
- Cadastrar Romarias (`/cadastrar-romarias`)
- Últimas Romarias (`/ultimas-romarias`)
- Próxima Transmissão (`/proxima-transmissao`)
- Última Transmissão (`/ultima-transmissao`)
- Reflexão Dominical (`/reflexao-dominical`)

## Run locally

```bash
flutter pub get
flutter run
```

## Notes

- Shared design tokens and reusable widgets are used across all sections.
- Navigation was redesigned to avoid overcrowding: primary tabs + secondary drawer.
