import 'package:flutter/material.dart';

import '../theme/app_tokens.dart';

class SantuarioButton extends StatelessWidget {
  const SantuarioButton({
    required this.label,
    required this.onPressed,
    super.key,
    this.expanded = false,
  });

  final String label;
  final VoidCallback onPressed;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final child = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTokens.primaryButton,
        foregroundColor: Colors.black,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTokens.radiusMd),
          side: const BorderSide(color: AppTokens.borderDark),
        ),
      ),
      child: Text(label),
    );
    return expanded ? SizedBox(width: double.infinity, child: child) : child;
  }
}
