import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // Llamando a menuProvider
    // Esto se disparara solamente una vez si no usamos hot restart
    // print(menuProvider.options);
    // Usaremos aquí el Future Builder
    // Esta alternativa no es buena porque puede que tarde en cargar demasiado
    // la data
    // menuProvider.loadData().then((options) {
    //   print('_lista()');
    //   print(options);
    // });
    // return ListView(
    //   children: _listItems(),
    // );

    // Usaremos aquí el Future Builder
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder');
        // print(snapshot);
        // print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  // Operador de null ?
  List<Widget> _listItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> options = [];

    data?.forEach((element) {
      options
        ..add(ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            print('Tap');
            // final route = MaterialPageRoute(builder: (context) => AlertPage());
            // Navigator.push(context, route);
          Navigator.pushNamed(context, element['ruta']);
          },
        ))
        ..add(const Divider());
    });

    return options;
  }
}
