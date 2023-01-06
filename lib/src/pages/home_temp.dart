import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes temp'),
      ),
      body: ListView(
        children:  const <Widget>[
          ListTile(
            title: Text('Alertas'),
          ),
          Divider(),
          ListTile(
            title: Text('Alertas'),
          ),
        ],
      ),
    );
  }
}
