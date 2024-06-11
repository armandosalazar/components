import 'package:components/presentation/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    );
    // return MaterialApp(
    //   title: 'Material App',
    //   debugShowCheckedModeBanner: false,
    //   // home: HomePageTemp(),
    //   // home: HomePage(),
    //   // Al colocar las rutas así, se debe comentar el home, para que no sea
    //   // redundante
    //   initialRoute: '/',
    //   routes: getApplicationRoutes(),
    //   onGenerateRoute: (RouteSettings settings) {
    //     if (kDebugMode) print('Called route: ${settings.name}');
    //     return MaterialPageRoute(
    //       builder: (context) => NotFound(
    //         route: settings.name,
    //       ),
    //     );
    //   },
    // );
  }
}
