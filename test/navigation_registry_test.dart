import 'package:extensao_santuario/navigation/app_router.dart';
import 'package:extensao_santuario/navigation/page_registry.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every registered nav page has a known app route', () {
    for (final page in PageRegistry.pages) {
      expect(
        AppRouter.knownRoutes.contains(page.route),
        isTrue,
        reason: 'Route not wired in AppRouter: ${page.route}',
      );
    }
  });

  test('every known route can generate a route object', () {
    for (final routeName in AppRouter.knownRoutes) {
      final route = AppRouter.onGenerateRoute(RouteSettings(name: routeName));
      expect(route, isNotNull, reason: 'Route did not resolve: $routeName');
    }
  });
}
