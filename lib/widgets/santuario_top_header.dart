import 'package:flutter/material.dart';

import '../navigation/app_router.dart';
import '../theme/app_tokens.dart';

class SantuarioTopHeader extends StatelessWidget {
  const SantuarioTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTokens.headerGreen,
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8B03C),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Logo',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'Santuário Senhor\nBom Jesus',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
                child: const Text('Entrar', style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.register);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTokens.primaryButton,
                  foregroundColor: Colors.black,
                ),
                child: const Text('Criar Conta'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _NavChip(label: 'Santuário'),
              _NavChip(label: 'Serviços'),
              _NavChip(label: 'Romarias'),
              _NavChip(label: 'Transmissões'),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavChip extends StatelessWidget {
  const _NavChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppTokens.primaryButton,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }
}
