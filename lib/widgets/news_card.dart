import 'package:flutter/material.dart';

import '../theme/app_tokens.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.title, required this.summary});

  final String title;
  final String summary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 261,
      decoration: BoxDecoration(
        color: const Color(0xFFF3B84D),
        borderRadius: BorderRadius.circular(AppTokens.radiusSm),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190,
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(Icons.image_outlined, size: 64),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(title, style: Theme.of(context).textTheme.bodyMedium),
          ),
          const Divider(color: Colors.black),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(summary, style: Theme.of(context).textTheme.bodySmall),
          ),
        ],
      ),
    );
  }
}
