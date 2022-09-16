import 'package:flutter/material.dart';

import '../../movements/view/movements_page.dart';
import '../../portfolio/view/portfolio_page.dart';
import '../../splash/splash_screen.dart';

class AppRoutes {
  static Map<String, Widget> routes = {
    '/splash': const SplashScreen(),
    '/portfolio': const PortfolioPage(),
    '/movements': const MovementsPage()
  };
}
