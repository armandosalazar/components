import 'dart:math';

import 'package:components/presentation/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleCubitPage extends StatelessWidget {
  const SimpleCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameCubit =
        context.watch<UsernameCubit>(); // observa los cambios del cubit.

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(usernameCubit.state),
              BlocBuilder<UsernameCubit, String>(
                buildWhen: (previous, current) => previous != current,
                builder: (BuildContext context, String state) => Text(state),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  usernameCubit.setUsername('user-${Random().nextInt(10)}'),
              child: const Icon(Icons.refresh),
            ),
            FloatingActionButton(
              onPressed: () => context
                  .read<UsernameCubit>()
                  .setUsername('user-${Random().nextInt(10)}'),
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
