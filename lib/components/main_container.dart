import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/food_cart.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});
  @override
  Widget build(context) {
    return Center(
        child: Container(
            decoration: const BoxDecoration(),
            child: const Center(
                child: Column(children: [
              Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
                  children: const [
                    FoodCart("assets/images/food3.png", "Pizza",
                        "Delicious pizza", "15.0", 5),
                    FoodCart("assets/images/food4.png", "Pasta",
                        "Delicious pasta", "12.0", 4),
                  ],
                ),
              ),
            ]))));
  }
}
