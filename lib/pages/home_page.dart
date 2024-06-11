import 'package:components/providers/menu_provider.dart';
import 'package:components/utils/icon_string_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components'),
      ),
      body: _list(),
      drawer: _drawer(context),
    );
  }

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [DrawerHeader(child: Text('Drawer Header'))],
      ),
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
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> builder) {
        if (kDebugMode) print('${builder.data}');
        return ListView(
          children: _listItems(builder.data, context),
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
            title: Text(element['text']!),
            leading: getIcon(element['icon']!),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue,
            ),
            onTap: () {
              if (kDebugMode) print('Tap');
              // final route = MaterialPageRoute(builder: (context) => AlertPage());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, element['route']!);
            },
          ),
        )
        ..add(const Divider());
    });

    return options;
  }
}
