import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(
            color: const Color(0xFFF3B84D),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.image_outlined, size: 64),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Text(
            'Título Evento\n25/05 às 13:00\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
        ),
      ],
    );
  }
}
