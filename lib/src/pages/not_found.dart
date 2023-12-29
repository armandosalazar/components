import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  final String? route;

  const NotFound({Key? key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Not Found'),
        centerTitle: true,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Not Fount\n',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: route,
                style: const TextStyle(
                    color: Colors.red, fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
