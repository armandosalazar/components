import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  final String? route;

  const NotFound({Key? key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Not Found 404'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Route /$route\nNot Found',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
