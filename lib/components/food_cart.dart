import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodCart extends StatelessWidget {
  const FoodCart(
      this.imageSrc, this.title, this.description, this.price, this.rating,
      {super.key});

  final String imageSrc;
  final String title;
  final String description;
  final String price;
  final double rating;
  @override
  Widget build(context) {
    return Center(
        child: Container(
            decoration: const BoxDecoration(),
            child: Center(
                child: Column(
              children: [
                Container(
                    width: 200,
                    height: 265,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset(
                                imageSrc,
                                height: 150,
                              ),
                            ),
                            Text(title,
                                style: const TextStyle(
                                    fontSize: 23,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 4),
                            Text(description,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                )),
                            const SizedBox(height: 6),
                            RatingBar.builder(
                              initialRating: rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 16,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$ $price',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 28,
                                )
                              ],
                            )
                          ],
                        )))
              ],
            ))));
  }
}
