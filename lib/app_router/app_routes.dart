import 'package:flutter/material.dart';
import 'package:flutter_app_links/screens/page_one.dart';
import 'package:flutter_app_links/screens/page_two.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(navigatorKey: navigatorKey, routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const PageOne(),
  ),
  GoRoute(
    path: '/page-two',
    builder: (context, state) {
      final extra = state.extra as Map<String, String?>;
      final String? data = extra['random'];
      return PageTwo(
        randomValue: data,
      );
    },
  ),
]);
