import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        // child: RaisedButton(
        //   onPressed: () {},
        //   child: Text('Enter'),
        // ),
        // RaisedButton ya no funciona
        // https://docs.flutter.dev/release/breaking-changes/buttons
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Show Alert'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_backspace),
      ),
    );
  }
}
