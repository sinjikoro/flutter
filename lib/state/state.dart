import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class State extends StatelessWidget {
  const State({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('状態管理')),
      body: const Text('状態管理'),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'test'),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'test'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_rounded), label: 'test'),
        ],
        onTap: (index) {
          GoRouter.of(context).push('/riverpod');
        },
      ),
    );
  }
}
