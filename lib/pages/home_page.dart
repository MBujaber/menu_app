import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/food.dart';

class HomeSceen extends StatelessWidget {
  HomeSceen({super.key});

  var foods = [
    Food(name: 'Burger', imgPath: 'assets/burger.jpg'),
    Food(name: 'Pasta', imgPath: 'assets/pasta.jpg'),
    Food(name: 'Pizza', imgPath: 'assets/pizza.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Menu App',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              context.push(
                "/foodpage",
                extra: foods[index],
              );
            },
            child: Row(
              children: [
                Image.asset(
                  foods[index].imgPath,
                  height: 120,
                  width: 120,
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Text(foods[index].name),
                )
              ],
            ),
          );
          ;
        },
      ),
    );
  }
}
