import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading(this.heading, {super.key});

  final String heading;

  @override
  Widget build(context) {
    return Text(heading,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ));
  }
}
