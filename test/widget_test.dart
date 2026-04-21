import 'package:extensao_santuario/app.dart';
import 'package:extensao_santuario/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> _enterHomeShell(WidgetTester tester) async {
  await tester.pumpWidget(const SantuarioApp());
  await tester.tap(find.byKey(const Key('login-enter-button')));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('app boots with login content', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Entrar'), findsWidgets);
  });

  testWidgets('login button navigates to home shell', (WidgetTester tester) async {
    await _enterHomeShell(tester);

    expect(find.text('Home'), findsWidgets);
    expect(find.text('Notícias'), findsWidgets);
    expect(find.text('Serviços'), findsWidgets);
  });

  testWidgets('bottom navigation switches to noticias page', (WidgetTester tester) async {
    await _enterHomeShell(tester);

    await tester.tap(find.byKey(const Key('tab-icon-/noticias')));
    await tester.pumpAndSettle();

    expect(find.text('Principais Notícias'), findsWidgets);
  });

  testWidgets('drawer navigation uses stable keys', (WidgetTester tester) async {
    await _enterHomeShell(tester);

    final ScaffoldState scaffoldState = tester.firstState(find.byType(Scaffold));
    scaffoldState.openDrawer();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('drawer-item-${AppRoutes.history}')));
    await tester.pumpAndSettle();

    expect(find.text('História'), findsWidgets);
  });

  testWidgets('primary tabs open each hub/page', (WidgetTester tester) async {
    await _enterHomeShell(tester);

    await tester.tap(find.byKey(const Key('tab-icon-/servicos')));
    await tester.pumpAndSettle();
    expect(find.text('Serviços'), findsWidgets);

    await tester.tap(find.byKey(const Key('tab-icon-/romarias')));
    await tester.pumpAndSettle();
    expect(find.text('Romarias'), findsWidgets);

    await tester.tap(find.byKey(const Key('tab-icon-/transmissoes')));
    await tester.pumpAndSettle();
    expect(find.text('Transmissões'), findsWidgets);
  });

  testWidgets('drawer opens representative pages by section', (WidgetTester tester) async {
    await _enterHomeShell(tester);

    final ScaffoldState scaffoldState = tester.firstState(find.byType(Scaffold));

    scaffoldState.openDrawer();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(Key('drawer-item-${AppRoutes.marriages}')));
    await tester.pumpAndSettle();
    expect(find.text('Casamentos'), findsWidgets);

    scaffoldState.openDrawer();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(Key('drawer-item-${AppRoutes.upcomingRomarias}')));
    await tester.pumpAndSettle();
    expect(find.text('Próximas Romarias'), findsWidgets);

    scaffoldState.openDrawer();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(Key('drawer-item-${AppRoutes.nextTransmission}')));
    await tester.pumpAndSettle();
    expect(find.text('Próxima Transmissão'), findsWidgets);
  });
}
