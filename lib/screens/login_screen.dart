import 'package:flutter/material.dart';

import '../navigation/app_router.dart';
import '../theme/app_tokens.dart';
import '../widgets/santuario_button.dart';
import '../widgets/santuario_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                children: [
                  Text('Login', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(width: 24),
                  Container(width: 1, height: 120, color: AppTokens.headerGreen),
                  const Spacer(),
                  Container(
                    width: 77,
                    height: 77,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE8B03C),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Text('Logo\nSantuário', textAlign: TextAlign.center),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(4, 6)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SantuarioInput(label: 'Email', hint: 'Insira seu email!'),
                    const SizedBox(height: 16),
                    const SantuarioInput(label: 'Senha', hint: 'Insira sua senha!', obscure: true),
                    const SizedBox(height: 24),
                    SantuarioButton(
                      key: const Key('login-enter-button'),
                      label: 'Entrar',
                      expanded: true,
                      onPressed: () => Navigator.pushNamed(context, AppRoutes.home),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.register),
                  child: const Text('Ainda não tem login? Cadastre-se aqui!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
