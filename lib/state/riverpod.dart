import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final countProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);
  void increment() => state++;
}

class Riverpod extends ConsumerWidget {
  const Riverpod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cnt = ref.watch(countProvider);
    ref.listen(countProvider, (int? previous, int next) {
      if (next % 3 == 0) {
        debugPrint('さ〜ん $next 回');
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod')),
      body: Text('count: $cnt'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(countProvider.notifier).increment();
        },
      ),
    );
  }
}
