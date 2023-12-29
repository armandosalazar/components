import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  final String? route;

  const Page404({Key? key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Route /$route Not Found',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "monospace",
            ),
          ),
        ));
  }
}
