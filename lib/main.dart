import 'package:components/pages/alert_page.dart';
import 'package:components/pages/avatar_page.dart';
import 'package:components/pages/bloc_pattern_page.dart';
import 'package:components/pages/card_page.dart';
import 'package:components/pages/dashboard_page.dart';
import 'package:components/pages/home_page.dart';
import 'package:components/presentation/blocs.dart';
import 'package:components/presentation/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const BlocsProvider());

class BlocsProvider extends StatelessWidget {
  const BlocsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => UsernameCubit(),
          lazy: true, // default true
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Components',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/alert',
            builder: (context, state) => const AlertPage(),
          ),
          GoRoute(
            path: '/avatar',
            builder: (context, state) => const AvatarPage(),
          ),
          GoRoute(
            path: '/card',
            builder: (context, state) => const CardPage(),
          ),
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const DashboardPage(),
          ),
          GoRoute(
            path: '/bloc-pattern',
            builder: (context, state) => const BlocPatternPage(),
            routes: [
              GoRoute(
                path: 'simple-cubit',
                builder: (context, state) => const SimpleCubitPage(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
