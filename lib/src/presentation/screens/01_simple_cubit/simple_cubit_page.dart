import 'dart:math';

import 'package:components/src/presentation/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleCubitPage extends StatelessWidget {
  const SimpleCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameCubit =
        context.watch<UsernameCubit>(); // observa los cambios del cubit.

    return Scaffold(
      body: Center(
        child: Text(usernameCubit.state),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            usernameCubit.setUsername('user-${Random().nextInt(10)}'),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
