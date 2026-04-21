import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/remaining_pages.dart';
import '../screens/register_screen.dart';

class AppRoutes {
  static const login = '/';
  static const register = '/register';
  static const home = '/home';
  static const news = '/noticias';
  static const servicesHub = '/servicos';
  static const romariasHub = '/romarias';
  static const transmissionsHub = '/transmissoes';

  static const newsDetail = '/noticia';
  static const history = '/historia';
  static const team = '/equipe';
  static const curiosities = '/curiosidades';
  static const redentoristas = '/redentoristas';
  static const visitSanctuary = '/conheca-santuario';
  static const gallery = '/galeria';

  static const marriages = '/casamentos';
  static const baptisms = '/batizados';
  static const virtualCandle = '/vela-virtual';
  static const massIntentions = '/intencao-missa';
  static const eventsCalendar = '/calendario-eventos';
  static const secretary = '/secretaria';

  static const upcomingRomarias = '/proximas-romarias';
  static const registerRomarias = '/cadastrar-romarias';
  static const latestRomarias = '/ultimas-romarias';

  static const nextTransmission = '/proxima-transmissao';
  static const lastTransmission = '/ultima-transmissao';
  static const sundayReflection = '/reflexao-dominical';
}

class AppRouter {
  static const Set<String> knownRoutes = {
    AppRoutes.login,
    AppRoutes.register,
    AppRoutes.home,
    AppRoutes.news,
    AppRoutes.servicesHub,
    AppRoutes.romariasHub,
    AppRoutes.transmissionsHub,
    AppRoutes.newsDetail,
    AppRoutes.history,
    AppRoutes.team,
    AppRoutes.curiosities,
    AppRoutes.redentoristas,
    AppRoutes.visitSanctuary,
    AppRoutes.gallery,
    AppRoutes.marriages,
    AppRoutes.baptisms,
    AppRoutes.virtualCandle,
    AppRoutes.massIntentions,
    AppRoutes.eventsCalendar,
    AppRoutes.secretary,
    AppRoutes.upcomingRomarias,
    AppRoutes.registerRomarias,
    AppRoutes.latestRomarias,
    AppRoutes.nextTransmission,
    AppRoutes.lastTransmission,
    AppRoutes.sundayReflection,
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
      case AppRoutes.register:
        return MaterialPageRoute<void>(builder: (_) => const RegisterScreen());
      case AppRoutes.home:
        return MaterialPageRoute<void>(builder: (_) => const HomeScreen());
      case AppRoutes.news:
        return MaterialPageRoute<void>(builder: (_) => const NewsScreen());
      case AppRoutes.servicesHub:
        return MaterialPageRoute<void>(builder: (_) => const ServicesHubScreen());
      case AppRoutes.romariasHub:
        return MaterialPageRoute<void>(builder: (_) => const RomariasHubScreen());
      case AppRoutes.transmissionsHub:
        return MaterialPageRoute<void>(builder: (_) => const TransmissionsHubScreen());
      case AppRoutes.newsDetail:
        return MaterialPageRoute<void>(builder: (_) => const NewsDetailScreen());
      case AppRoutes.history:
        return MaterialPageRoute<void>(builder: (_) => const HistoryScreen());
      case AppRoutes.team:
        return MaterialPageRoute<void>(builder: (_) => const TeamScreen());
      case AppRoutes.curiosities:
        return MaterialPageRoute<void>(builder: (_) => const CuriositiesScreen());
      case AppRoutes.redentoristas:
        return MaterialPageRoute<void>(builder: (_) => const RedentoristasScreen());
      case AppRoutes.visitSanctuary:
        return MaterialPageRoute<void>(builder: (_) => const VisitSanctuaryScreen());
      case AppRoutes.gallery:
        return MaterialPageRoute<void>(builder: (_) => const GalleryScreen());
      case AppRoutes.marriages:
        return MaterialPageRoute<void>(builder: (_) => const MarriagesScreen());
      case AppRoutes.baptisms:
        return MaterialPageRoute<void>(builder: (_) => const BaptismsScreen());
      case AppRoutes.virtualCandle:
        return MaterialPageRoute<void>(builder: (_) => const VirtualCandleScreen());
      case AppRoutes.massIntentions:
        return MaterialPageRoute<void>(builder: (_) => const MassIntentionsScreen());
      case AppRoutes.eventsCalendar:
        return MaterialPageRoute<void>(builder: (_) => const EventsCalendarScreen());
      case AppRoutes.secretary:
        return MaterialPageRoute<void>(builder: (_) => const SecretaryScreen());
      case AppRoutes.upcomingRomarias:
        return MaterialPageRoute<void>(builder: (_) => const UpcomingRomariasScreen());
      case AppRoutes.registerRomarias:
        return MaterialPageRoute<void>(builder: (_) => const RegisterRomariasScreen());
      case AppRoutes.latestRomarias:
        return MaterialPageRoute<void>(builder: (_) => const LatestRomariasScreen());
      case AppRoutes.nextTransmission:
        return MaterialPageRoute<void>(builder: (_) => const NextTransmissionScreen());
      case AppRoutes.lastTransmission:
        return MaterialPageRoute<void>(builder: (_) => const LastTransmissionScreen());
      case AppRoutes.sundayReflection:
        return MaterialPageRoute<void>(builder: (_) => const SundayReflectionScreen());
      default:
        return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
    }
  }
}
