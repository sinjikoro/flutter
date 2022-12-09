import 'package:flutter_exam/state/riverpod.dart';
import 'package:flutter_exam/state/state.dart';
import 'package:flutter_exam/home.dart';

import 'package:go_router/go_router.dart';

final myRoute = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Home(),
  ),
  GoRoute(
    path: '/state',
    builder: (context, state) => const State(),
  ),
  GoRoute(
    path: '/riverpod',
    builder: (context, state) => const Riverpod(),
  ),
]);
