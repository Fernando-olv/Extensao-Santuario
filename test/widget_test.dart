import 'package:extensao_santuario/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app boots with login content', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Entrar'), findsWidgets);
  });

  testWidgets('login button navigates to home shell', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    await tester.tap(find.widgetWithText(ElevatedButton, 'Entrar').first);
    await tester.pumpAndSettle();

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Notícias'), findsOneWidget);
    expect(find.text('Serviços'), findsOneWidget);
  });

  testWidgets('bottom navigation switches to noticias page', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    await tester.tap(find.widgetWithText(ElevatedButton, 'Entrar').first);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Notícias').last);
    await tester.pumpAndSettle();

    expect(find.text('Principais Notícias'), findsWidgets);
  });
}
