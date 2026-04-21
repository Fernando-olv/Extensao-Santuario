import 'package:extensao_santuario/app.dart';
import 'package:extensao_santuario/navigation/app_router.dart';
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
    await tester.tap(find.byKey(const Key('login-enter-button')));
    await tester.pumpAndSettle();

    expect(find.text('Home'), findsWidgets);
    expect(find.text('Notícias'), findsWidgets);
    expect(find.text('Serviços'), findsWidgets);
  });

  testWidgets('bottom navigation switches to noticias page', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    await tester.tap(find.byKey(const Key('login-enter-button')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('tab-icon-/noticias')));
    await tester.pumpAndSettle();

    expect(find.text('Principais Notícias'), findsWidgets);
  });

  testWidgets('drawer navigation uses stable keys', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    await tester.tap(find.byKey(const Key('login-enter-button')));
    await tester.pumpAndSettle();

    final ScaffoldState scaffoldState = tester.firstState(find.byType(Scaffold));
    scaffoldState.openDrawer();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('drawer-item-${AppRoutes.history}')));
    await tester.pumpAndSettle();

    expect(find.text('História'), findsWidgets);
  });
}
