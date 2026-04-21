import 'package:flutter/material.dart';

import '../navigation/app_router.dart';
import '../widgets/app_shell_scaffold.dart';
import '../widgets/page_blocks.dart';
import '../widgets/santuario_button.dart';
import '../widgets/santuario_input.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: AppRoutes.news,
      title: 'Notícias',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle(text: 'Principais Notícias'),
          const SizedBox(height: 12),
          const MediaPlaceholder(height: 220, label: 'Destaque da notícia'),
          const SizedBox(height: 10),
          const BodyParagraph(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.',
          ),
          const SizedBox(height: 14),
          const MediaPlaceholder(height: 220, label: 'Novidades'),
          const SizedBox(height: 10),
          SantuarioButton(
            label: 'Abrir Notícia',
            onPressed: () => Navigator.pushNamed(context, AppRoutes.newsDetail),
          ),
        ],
      ),
    );
  }
}

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.newsDetail,
      title: 'Notícia',
      sections: const [
        _PageSection(title: 'Notícia em destaque', withMedia: true),
        _PageSection(title: 'Conteúdo', lines: 3),
      ],
    );
  }
}

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.history,
      title: 'História',
      sections: const [
        _PageSection(title: 'História do Santuário', withMedia: true, lines: 3),
        _PageSection(title: 'Linha do tempo', lines: 4),
      ],
    );
  }
}

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.team,
      title: 'Equipe',
      sections: const [
        _PageSection(title: 'Pessoa principal', withMedia: true, lines: 2),
        _PageSection(title: 'Demais integrantes', withMedia: true, lines: 2),
      ],
    );
  }
}

class CuriositiesScreen extends StatelessWidget {
  const CuriositiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.curiosities,
      title: 'Curiosidades',
      sections: const [
        _PageSection(title: 'Onde foi encontrada a imagem', lines: 3, withMedia: true),
        _PageSection(title: 'Tradições e cruzes', lines: 3, withMedia: true),
      ],
    );
  }
}

class RedentoristasScreen extends StatelessWidget {
  const RedentoristasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.redentoristas,
      title: 'Redentoristas',
      sections: const [
        _PageSection(title: 'Funções atribuídas', lines: 2, withMedia: true),
        _PageSection(title: 'Organização', lines: 3, withMedia: true),
      ],
    );
  }
}

class VisitSanctuaryScreen extends StatelessWidget {
  const VisitSanctuaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.visitSanctuary,
      title: 'Conheça o Santuário',
      sections: const [
        _PageSection(title: 'Santuário', withMedia: true, lines: 3),
        _PageSection(title: 'Missas', withMedia: true, lines: 2),
        _PageSection(title: 'Imagens dos Santos', withMedia: true, lines: 2),
      ],
    );
  }
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.gallery,
      title: 'Galeria',
      sections: const [
        _PageSection(title: 'Imagens', withMedia: true, lines: 2),
        _PageSection(title: 'Caminhada', withMedia: true, lines: 2),
      ],
    );
  }
}

class ServicesHubScreen extends StatelessWidget {
  const ServicesHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: AppRoutes.servicesHub,
      title: 'Serviços',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle(text: 'Acesso rápido'),
          const SizedBox(height: 12),
          _HubItem(
            title: 'Casamentos',
            onTap: () => Navigator.pushNamed(context, AppRoutes.marriages),
          ),
          _HubItem(
            title: 'Batizados',
            onTap: () => Navigator.pushNamed(context, AppRoutes.baptisms),
          ),
          _HubItem(
            title: 'Vela Virtual',
            onTap: () => Navigator.pushNamed(context, AppRoutes.virtualCandle),
          ),
          _HubItem(
            title: 'Intenção de Missa',
            onTap: () => Navigator.pushNamed(context, AppRoutes.massIntentions),
          ),
          _HubItem(
            title: 'Calendário de Eventos',
            onTap: () => Navigator.pushNamed(context, AppRoutes.eventsCalendar),
          ),
          _HubItem(
            title: 'Secretaria',
            onTap: () => Navigator.pushNamed(context, AppRoutes.secretary),
          ),
        ],
      ),
    );
  }
}

class MarriagesScreen extends StatelessWidget {
  const MarriagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.marriages,
      title: 'Casamentos',
      sections: const [
        _PageSection(title: 'Como realizar seu casamento', withMedia: true, lines: 3),
        _PageSection(title: 'Contato da Secretaria', lines: 2),
      ],
    );
  }
}

class BaptismsScreen extends StatelessWidget {
  const BaptismsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.baptisms,
      title: 'Batizados',
      sections: const [
        _PageSection(title: 'Como agendar batizados', withMedia: true, lines: 3),
        _PageSection(title: 'Contato da Secretaria', lines: 2),
      ],
    );
  }
}

class VirtualCandleScreen extends StatelessWidget {
  const VirtualCandleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.virtualCandle,
      title: 'Vela Virtual',
      sections: const [
        _PageSection(title: 'Acenda sua vela', withMedia: true, lines: 2),
        _PageSection(title: 'Velas acesas pela comunidade', withMedia: true, lines: 2),
      ],
    );
  }
}

class MassIntentionsScreen extends StatelessWidget {
  const MassIntentionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: AppRoutes.massIntentions,
      title: 'Intenção de Missa',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SectionTitle(text: 'Cadastre sua Intenção'),
          SizedBox(height: 12),
          ContentCard(
            title: 'Formulário',
            children: [
              SantuarioInput(label: 'Nome', hint: 'Digite seu nome'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Telefone', hint: '(11) 99999-9999'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Email', hint: 'nome@email.com'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Data', hint: 'dd/mm/aaaa'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Intenção', hint: 'Descreva a intenção'),
            ],
          ),
        ],
      ),
    );
  }
}

class EventsCalendarScreen extends StatelessWidget {
  const EventsCalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.eventsCalendar,
      title: 'Calendário de Eventos',
      sections: const [
        _PageSection(title: 'Calendário', withMedia: true, lines: 2),
        _PageSection(title: 'Evento 1', withMedia: true, lines: 2),
        _PageSection(title: 'Evento 2', withMedia: true, lines: 2),
      ],
    );
  }
}

class SecretaryScreen extends StatelessWidget {
  const SecretaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.secretary,
      title: 'Secretaria',
      sections: const [
        _PageSection(title: 'Secretaria do Santuário', withMedia: true, lines: 2),
        _PageSection(title: 'Contato', lines: 2),
      ],
    );
  }
}

class RomariasHubScreen extends StatelessWidget {
  const RomariasHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: AppRoutes.romariasHub,
      title: 'Romarias',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle(text: 'Romarias'),
          const SizedBox(height: 12),
          _HubItem(
            title: 'Próximas Romarias',
            onTap: () => Navigator.pushNamed(context, AppRoutes.upcomingRomarias),
          ),
          _HubItem(
            title: 'Cadastrar Romaria',
            onTap: () => Navigator.pushNamed(context, AppRoutes.registerRomarias),
          ),
          _HubItem(
            title: 'Últimas Romarias',
            onTap: () => Navigator.pushNamed(context, AppRoutes.latestRomarias),
          ),
        ],
      ),
    );
  }
}

class UpcomingRomariasScreen extends StatelessWidget {
  const UpcomingRomariasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.upcomingRomarias,
      title: 'Próximas Romarias',
      sections: const [
        _PageSection(title: 'Caucaia', withMedia: true, lines: 2),
        _PageSection(title: 'Salto', withMedia: true, lines: 2),
      ],
    );
  }
}

class RegisterRomariasScreen extends StatelessWidget {
  const RegisterRomariasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: AppRoutes.registerRomarias,
      title: 'Cadastrar Romarias',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SectionTitle(text: 'Cadastre sua Romaria'),
          SizedBox(height: 12),
          ContentCard(
            title: 'Formulário',
            children: [
              SantuarioInput(label: 'Nome do grupo', hint: 'Ex: Romaria São José'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Cidade', hint: 'Digite a cidade'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Contato', hint: '(11) 99999-9999'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Data prevista', hint: 'dd/mm/aaaa'),
              SizedBox(height: 10),
              SantuarioInput(label: 'Quantidade', hint: 'Número de pessoas'),
            ],
          ),
        ],
      ),
    );
  }
}

class LatestRomariasScreen extends StatelessWidget {
  const LatestRomariasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.latestRomarias,
      title: 'Últimas Romarias',
      sections: const [
        _PageSection(title: 'Santo Amaro', withMedia: true, lines: 2),
        _PageSection(title: 'Carapicuíba', withMedia: true, lines: 2),
      ],
    );
  }
}

class TransmissionsHubScreen extends StatelessWidget {
  const TransmissionsHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: AppRoutes.transmissionsHub,
      title: 'Transmissões',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle(text: 'Conteúdos de transmissão'),
          const SizedBox(height: 12),
          _HubItem(
            title: 'Próxima Transmissão',
            onTap: () => Navigator.pushNamed(context, AppRoutes.nextTransmission),
          ),
          _HubItem(
            title: 'Última Transmissão',
            onTap: () => Navigator.pushNamed(context, AppRoutes.lastTransmission),
          ),
          _HubItem(
            title: 'Reflexão Dominical',
            onTap: () => Navigator.pushNamed(context, AppRoutes.sundayReflection),
          ),
        ],
      ),
    );
  }
}

class NextTransmissionScreen extends StatelessWidget {
  const NextTransmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.nextTransmission,
      title: 'Próxima Transmissão',
      sections: const [
        _PageSection(title: 'Ao vivo em breve', withMedia: true, lines: 2),
      ],
    );
  }
}

class LastTransmissionScreen extends StatelessWidget {
  const LastTransmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.lastTransmission,
      title: 'Última Transmissão',
      sections: const [
        _PageSection(title: 'Transmissão anterior', withMedia: true, lines: 2),
      ],
    );
  }
}

class SundayReflectionScreen extends StatelessWidget {
  const SundayReflectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _StandardPage(
      route: AppRoutes.sundayReflection,
      title: 'Reflexão Dominical',
      sections: const [
        _PageSection(title: 'Mensagem da semana', withMedia: true, lines: 3),
      ],
    );
  }
}

class _StandardPage extends StatelessWidget {
  const _StandardPage({
    required this.route,
    required this.title,
    required this.sections,
  });

  final String route;
  final String title;
  final List<_PageSection> sections;

  @override
  Widget build(BuildContext context) {
    return AppShellScaffold(
      currentRoute: route,
      title: title,
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: sections.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (_, index) {
          final section = sections[index];
          return ContentCard(
            title: section.title,
            children: [
              if (section.withMedia) ...[
                const MediaPlaceholder(),
                const SizedBox(height: 10),
              ],
              for (var i = 0; i < section.lines; i++) ...[
                const BodyParagraph(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.',
                ),
                if (i != section.lines - 1) const SizedBox(height: 8),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _HubItem extends StatelessWidget {
  const _HubItem({
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}

class _PageSection {
  const _PageSection({
    required this.title,
    this.lines = 1,
    this.withMedia = false,
  });

  final String title;
  final int lines;
  final bool withMedia;
}
