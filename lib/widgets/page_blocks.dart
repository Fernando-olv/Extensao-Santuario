import 'package:flutter/material.dart';

import '../theme/app_tokens.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 4),
        const Divider(height: 1, color: AppTokens.borderDark),
      ],
    );
  }
}

class BodyParagraph extends StatelessWidget {
  const BodyParagraph(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}

class MediaPlaceholder extends StatelessWidget {
  const MediaPlaceholder({
    super.key,
    this.height = 180,
    this.label = 'Imagem/Conteúdo visual',
  });

  final double height;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF3B84D),
        borderRadius: BorderRadius.circular(AppTokens.radiusSm),
        border: Border.all(color: AppTokens.borderDark),
      ),
      alignment: Alignment.center,
      child: Text(label, textAlign: TextAlign.center),
    );
  }
}

class ContentCard extends StatelessWidget {
  const ContentCard({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppTokens.borderDark),
        borderRadius: BorderRadius.circular(AppTokens.radiusSm),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(text: title),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}
