import 'package:flutter/material.dart';

import '../navigation/app_router.dart';
import '../theme/app_tokens.dart';
import '../widgets/santuario_button.dart';
import '../widgets/santuario_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Cadastre-se', style: Theme.of(context).textTheme.headlineMedium),
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
              const SizedBox(height: 16),
              Container(height: 1, color: AppTokens.headerGreen),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(4, 6)),
                  ],
                ),
                child: Column(
                  children: [
                    const SantuarioInput(label: 'Nome Completo', hint: 'Insira seu Nome Completo'),
                    const SizedBox(height: 12),
                    const SantuarioInput(label: 'Telefone', hint: '(dd)xxxxx-xxxx'),
                    const SizedBox(height: 12),
                    const SantuarioInput(label: 'Email', hint: 'Insira seu Email'),
                    const SizedBox(height: 12),
                    const SantuarioInput(label: 'Senha', hint: 'Insira sua Senha', obscure: true),
                    const SizedBox(height: 12),
                    const SantuarioInput(
                      label: 'Confirme sua Senha',
                      hint: 'Confirme sua senha',
                      obscure: true,
                    ),
                    const SizedBox(height: 20),
                    SantuarioButton(
                      label: 'Cadastrar',
                      expanded: true,
                      onPressed: () => Navigator.pushNamed(context, AppRoutes.home),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Já tem login? Clique Aqui!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
