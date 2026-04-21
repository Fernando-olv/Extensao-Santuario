import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

class AppRoutes {
  static const login = '/';
  static const register = '/register';
  static const home = '/home';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
      case AppRoutes.register:
        return MaterialPageRoute<void>(builder: (_) => const RegisterScreen());
      case AppRoutes.home:
        return MaterialPageRoute<void>(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
    }
  }
}
