import 'package:flutter/material.dart';

import '../widgets/event_card.dart';
import '../widgets/news_card.dart';
import '../widgets/santuario_button.dart';
import '../widgets/santuario_top_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SantuarioTopHeader(),
            const SizedBox(height: 16),
            Center(child: Text('Próximas Missas:', style: Theme.of(context).textTheme.titleMedium)),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Text('22/05/2025\n12:00 Pe. Augusto\n19:00 Pe. João\n\n23/05/2025\n13:00 Pe. Jonas'),
                  ),
                  SizedBox(width: 12),
                  VerticalDivider(color: Colors.black, thickness: 1),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text('24/05/2025\n12:00 Pe. Augusto\n19:00 Pe. João\n\n25/05/2025\n13:00 Pe. Jonas'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Principais Notícias Santuário',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  NewsCard(
                    title: 'Título Notícia 22/05/2025',
                    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ),
                  SizedBox(width: 12),
                  NewsCard(
                    title: 'Título Notícia 23/05/2025',
                    summary: 'Sed do eiusmod tempor incididunt ut labore.',
                  ),
                ],
              ),
            ),
            Center(
              child: SantuarioButton(
                label: 'Todas as Notícias',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 24),
            Center(child: Text('Próximo Evento', style: Theme.of(context).textTheme.titleMedium)),
            const Divider(indent: 44, endIndent: 44),
            const Padding(
              padding: EdgeInsets.all(16),
              child: EventCard(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SantuarioButton(label: 'Calendário', onPressed: () {}),
            ),
            const SizedBox(height: 24),
            Center(child: Text('Como Chegar', style: Theme.of(context).textTheme.titleMedium)),
            const Divider(indent: 44, endIndent: 44),
            Container(
              margin: const EdgeInsets.all(16),
              height: 280,
              decoration: BoxDecoration(
                color: const Color(0xFFD7F0E7),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: const Text('Mapa (placeholder)'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
