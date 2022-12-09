import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Riverpod extends StatelessWidget {
  const Riverpod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod')),
      body: const Text('りばぽ'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        child: const Icon(Icons.abc),
      ),
    );
  }
}
