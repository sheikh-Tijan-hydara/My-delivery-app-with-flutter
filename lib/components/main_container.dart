import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/food_cart.dart';

List<Map<String, dynamic>> menuList = [
  {
    "image": "assets/images/food1.png",
    "name": "Hot Burger",
    "description": "Delicious hot burger",
    "price": "10.0",
    "rating": 4
  },
  {
    "image": "assets/images/food2.png",
    "name": "Hot Dog",
    "description": "Delicious hot dog",
    "price": "5.0",
    "rating": 3
  },
  {
    "image": "assets/images/food3.png",
    "name": "Pizza",
    "description": "Delicious pizza",
    "price": "15.0",
    "rating": 5
  },
  {
    "image": "assets/images/food4.png",
    "name": "Pasta",
    "description": "Delicious pasta",
    "price": "12.0",
    "rating": 4
  },
  {
    "image": "assets/images/food2.png",
    "name": "Pizza",
    "description": "Delicious pizza",
    "price": "15.0",
    "rating": 5
  },
  {
    "image": "assets/images/food1.png",
    "name": "Pasta",
    "description": "Delicious pasta",
    "price": "12.0",
    "rating": 4
  }
];

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(context) {
    return Center(
        child: SingleChildScrollView(
            child: Container(
                decoration: const BoxDecoration(),
                child: const Center(
                    child: Column(children: [
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FoodCart("assets/images/food1.png", "Hot Burger",
                            "Delicious hot burger", "10.0", 4),
                        FoodCart("assets/images/food2.png", "Hot Dog",
                            "Delicious hot dog", "5.0", 3),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FoodCart("assets/images/food3.png", "Pizza",
                            "Delicious pizza", "15.0", 5),
                        FoodCart("assets/images/food4.png", "Pasta",
                            "Delicious pasta", "12.0", 4),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FoodCart("assets/images/food2.png", "Pizza",
                            "Delicious pizza", "15.0", 5),
                        FoodCart("assets/images/food1.png", "Pasta",
                            "Delicious pasta", "12.0", 4),
                      ],
                    ),
                  ),
                ])))));
  }
}
