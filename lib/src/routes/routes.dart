import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/dashboard_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    '/alert': (BuildContext context) => const AlertPage(),
    '/avatar': (BuildContext context) => const AvatarPage(),
    '/card': (BuildContext context) => const CardPage(),
    '/dashboard': (BuildContext context) => const DashboardPage(),
  };
}
