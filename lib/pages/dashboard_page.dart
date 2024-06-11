import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _counter = 0;

  _addCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$_counter',
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () => _addCounter(),
                child: const Text('+'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
