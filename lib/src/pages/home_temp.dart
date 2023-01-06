import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(10.0),
        height: 80,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: const Text('Luis', style: TextStyle(
          backgroundColor: Colors.lightGreen,
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
