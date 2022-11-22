import 'package:flutter/material.dart';
import 'package:menu_app/pages/food_page.dart';
import 'package:menu_app/pages/home_page.dart';

import 'models/food.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => HomeSceen(),
  ),
  GoRoute(
    path: '/foodpage',
    builder: (context, state) => FoodPage(food: state.extra as Food),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routerConfig: router,
    );
  }
}
