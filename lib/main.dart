import 'package:components/src/pages/not_found.dart';
import 'package:components/src/routes/routes.dart' show getApplicationRoutes;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// mis paquetes al final
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: HomePageTemp(),
      // home: HomePage(),
      // Al colocar las rutas así, se debe comentar el home, para que no sea
      // redundante
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        if (kDebugMode) print('Called route: ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => NotFound(
            route: settings.name,
          ),
        );
      },
    );
  }
}
