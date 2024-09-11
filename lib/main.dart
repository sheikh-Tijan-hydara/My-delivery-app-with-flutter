import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/app_bar.dart';
import 'package:my_first_flutter_app/components/main_container.dart';
import 'package:my_first_flutter_app/components/bottom_navigation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: AppBarContainer()),
        bottomNavigationBar: BottomNavigation(),
        body: Center(child: MainContainer())),
  ));
}
