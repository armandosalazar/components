import 'package:flutter/material.dart';

class BlocPatternPage extends StatelessWidget {
  const BlocPatternPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Pattern'),
      ),
      body: SafeArea(
        child: SizedBox(
          child: ListView(
            children: [
              const Divider(),
              ListTile(
                title: const Text('Simple cubit'),
                onTap: () => Navigator.pushNamed(
                  context,
                  "/bloc-pattern/simple-cubit",
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
