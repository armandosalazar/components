import 'package:componentes/src/routes/routes.dart' show getApplicationRoutes;
import 'package:componentes/src/pages/page_404.dart';
import 'package:flutter/material.dart';

// mis paquetes al final
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      onGenerateRoute: (settings) {
        print('Called route: ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => Page404(
            route: settings.name,
          ),
        );
      },
    );
  }
}
