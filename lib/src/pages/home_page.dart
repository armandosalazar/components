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
    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      ListTile(
        title: Text('Hola mundo'),
      ),
      Divider(),
      ListTile(
        title: Text('Hola mundo'),
      ),
      Divider(),
      ListTile(
        title: Text('Hola mundo'),
      ),
      Divider(),
    ];
  }
}
