import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/app_bar.dart';
import 'package:my_first_flutter_app/components/main_container.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: AppBarContainer()),
        drawer: Drawer(
            child: Container(
          color: Colors.deepPurple[100],
          child: ListView(children: const [
            DrawerHeader(
                child: Center(
              child: Text(
                'T I J A N I',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            ListTile(
              leading: Icon(Icons.home, color: Colors.deepPurple),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.deepPurple),
              title: Text(
                'My Orders',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        )),
        body: const Center(child: MainContainer())),
  ));
}
