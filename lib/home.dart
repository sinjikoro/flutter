import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_exam'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
              title: const Text('状態管理'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                GoRouter.of(context).push('/state');
              }),
          const ListTile(
            title: Text('test'),
          ),
        ],
      )),
      body: const Text('home'),
    );
  }
}
