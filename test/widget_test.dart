import 'package:extensao_santuario/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app boots with login content', (WidgetTester tester) async {
    await tester.pumpWidget(const SantuarioApp());
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Entrar'), findsWidgets);
  });
}
