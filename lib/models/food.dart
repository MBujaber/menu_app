import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Items extends StatelessWidget {
  List items = [
    'Pasta',
    'Burger',
    'Suchi',
    'Pizza',
    'Biryani',
  ];
  List imgPaths = [
    'assets/pasta.jpg',
    'assets/burger.jpg',
    'assets/suchi.jpg',
    'assets/pizza.jpg',
    'assets/biryani.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      // 1
      body: ListView.builder(
        // 2
        itemCount: items.length,
        // 3
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      items[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    imgPaths[index],
                    width: 125,
                    height: 125,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
