import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  final route;

  Page404({Key? key, String? this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('404'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Route /${this.route} Not Found',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "monospace",
            ),
          ),
        ));
  }
}
