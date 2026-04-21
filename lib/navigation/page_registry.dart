import 'package:flutter/material.dart';

import 'app_router.dart';

enum NavSection { primary, informational, services, romarias, transmissions }

class NavPage {
  const NavPage({
    required this.route,
    required this.label,
    required this.icon,
    required this.section,
    this.primaryIndex,
  });

  final String route;
  final String label;
  final IconData icon;
  final NavSection section;
  final int? primaryIndex;
}

class PageRegistry {
  static const List<NavPage> pages = [
    NavPage(
      route: AppRoutes.home,
      label: 'Home',
      icon: Icons.home_outlined,
      section: NavSection.primary,
      primaryIndex: 0,
    ),
    NavPage(
      route: AppRoutes.news,
      label: 'Notícias',
      icon: Icons.article_outlined,
      section: NavSection.primary,
      primaryIndex: 1,
    ),
    NavPage(
      route: AppRoutes.servicesHub,
      label: 'Serviços',
      icon: Icons.miscellaneous_services_outlined,
      section: NavSection.primary,
      primaryIndex: 2,
    ),
    NavPage(
      route: AppRoutes.romariasHub,
      label: 'Romarias',
      icon: Icons.groups_outlined,
      section: NavSection.primary,
      primaryIndex: 3,
    ),
    NavPage(
      route: AppRoutes.transmissionsHub,
      label: 'Transmissões',
      icon: Icons.live_tv_outlined,
      section: NavSection.primary,
      primaryIndex: 4,
    ),
    NavPage(
      route: AppRoutes.newsDetail,
      label: 'Notícia',
      icon: Icons.description_outlined,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.history,
      label: 'História',
      icon: Icons.history_edu_outlined,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.team,
      label: 'Equipe',
      icon: Icons.group_outlined,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.curiosities,
      label: 'Curiosidades',
      icon: Icons.lightbulb_outline,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.redentoristas,
      label: 'Redentoristas',
      icon: Icons.account_balance_outlined,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.visitSanctuary,
      label: 'Conheça o Santuário',
      icon: Icons.location_city_outlined,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.gallery,
      label: 'Galeria',
      icon: Icons.photo_library_outlined,
      section: NavSection.informational,
    ),
    NavPage(
      route: AppRoutes.marriages,
      label: 'Casamentos',
      icon: Icons.favorite_border,
      section: NavSection.services,
    ),
    NavPage(
      route: AppRoutes.baptisms,
      label: 'Batizados',
      icon: Icons.water_drop_outlined,
      section: NavSection.services,
    ),
    NavPage(
      route: AppRoutes.virtualCandle,
      label: 'Vela Virtual',
      icon: Icons.local_fire_department_outlined,
      section: NavSection.services,
    ),
    NavPage(
      route: AppRoutes.massIntentions,
      label: 'Intenção de Missa',
      icon: Icons.edit_note_outlined,
      section: NavSection.services,
    ),
    NavPage(
      route: AppRoutes.eventsCalendar,
      label: 'Calendário de Eventos',
      icon: Icons.calendar_month_outlined,
      section: NavSection.services,
    ),
    NavPage(
      route: AppRoutes.secretary,
      label: 'Secretaria',
      icon: Icons.business_outlined,
      section: NavSection.services,
    ),
    NavPage(
      route: AppRoutes.upcomingRomarias,
      label: 'Próximas Romarias',
      icon: Icons.event_outlined,
      section: NavSection.romarias,
    ),
    NavPage(
      route: AppRoutes.registerRomarias,
      label: 'Cadastrar Romarias',
      icon: Icons.playlist_add_outlined,
      section: NavSection.romarias,
    ),
    NavPage(
      route: AppRoutes.latestRomarias,
      label: 'Últimas Romarias',
      icon: Icons.update_outlined,
      section: NavSection.romarias,
    ),
    NavPage(
      route: AppRoutes.nextTransmission,
      label: 'Próxima Transmissão',
      icon: Icons.play_circle_outline,
      section: NavSection.transmissions,
    ),
    NavPage(
      route: AppRoutes.lastTransmission,
      label: 'Última Transmissão',
      icon: Icons.replay_outlined,
      section: NavSection.transmissions,
    ),
    NavPage(
      route: AppRoutes.sundayReflection,
      label: 'Reflexão Dominical',
      icon: Icons.menu_book_outlined,
      section: NavSection.transmissions,
    ),
  ];

  static List<NavPage> bySection(NavSection section) {
    return pages.where((page) => page.section == section).toList();
  }

  static NavPage? byRoute(String route) {
    for (final page in pages) {
      if (page.route == route) return page;
    }
    return null;
  }
}
