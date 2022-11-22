import 'package:flutter/material.dart';
import 'package:menu_app/models/food.dart';

class FoodPage extends StatelessWidget {
  FoodPage({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Image.asset(food.imgPath),
    );
  }
}
