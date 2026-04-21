import 'package:flutter/material.dart';

import '../navigation/page_registry.dart';
import '../theme/app_tokens.dart';

class AppShellScaffold extends StatelessWidget {
  const AppShellScaffold({
    required this.currentRoute,
    required this.title,
    required this.body,
    super.key,
  });

  final String currentRoute;
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final page = PageRegistry.byRoute(currentRoute);
    final selectedIndex = page?.primaryIndex ?? 0;
    final primaryPages = PageRegistry.bySection(NavSection.primary);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppTokens.headerGreen,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: AppTokens.headerGreen),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Santuário Senhor Bom Jesus',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ..._buildSection(context, 'Informações', NavSection.informational),
            ..._buildSection(context, 'Serviços', NavSection.services),
            ..._buildSection(context, 'Romarias', NavSection.romarias),
            ..._buildSection(context, 'Transmissões', NavSection.transmissions),
          ],
        ),
      ),
      body: SafeArea(child: body),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: AppTokens.primaryButton,
        unselectedItemColor: AppTokens.bodyText,
        onTap: (index) {
          final target = primaryPages[index];
          if (target.route == currentRoute) return;
          Navigator.pushReplacementNamed(context, target.route);
        },
        items: primaryPages
            .map(
              (pageItem) => BottomNavigationBarItem(
                icon: Icon(pageItem.icon),
                label: pageItem.label,
              ),
            )
            .toList(),
      ),
    );
  }

  List<Widget> _buildSection(BuildContext context, String title, NavSection section) {
    final pages = PageRegistry.bySection(section);
    return [
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
        child: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
      ),
      ...pages.map(
        (page) => ListTile(
          leading: Icon(page.icon),
          title: Text(page.label),
          onTap: () {
            Navigator.pop(context);
            if (page.route == currentRoute) return;
            Navigator.pushReplacementNamed(context, page.route);
          },
        ),
      ),
    ];
  }
}
