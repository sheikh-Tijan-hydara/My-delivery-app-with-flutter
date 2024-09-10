import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/custom_heading.dart';

const whiteColor = Colors.white;

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key});

  @override
  Widget build(context) {
    return AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 0,
        title: const CustomHeading('T I J A N I'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag, color: whiteColor),
          ),
        ]);
  }
}
