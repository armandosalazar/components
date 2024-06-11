import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemsShort(),
      ),
    );
  }

  // List<Widget> _createItems() {
  //   List<Widget> list = <Widget>[];
  //   for (var option in options) {
  //     var listTile = ListTile(title: Text(option));
  //     // list.add(listTile);
  //     // list.add(const Divider());
  //     // Esto se puede hacer de otra forma con el operador de cascada:
  //     list
  //       ..add(listTile)
  //       ..add(const Divider());
  //   }
  //   return list;
  // }

  List<Widget> _createItemsShort() {
    return options
        .map((e) => Column(
              children: [
                ListTile(
                  title: Text(e),
                  subtitle: const Text('Cualquier cosa'),
                  leading: const Icon(Icons.account_balance_wallet),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    if (kDebugMode) print('Tap');
                  },
                ),
                const Divider()
              ],
            ))
        .toList();
  }
}
