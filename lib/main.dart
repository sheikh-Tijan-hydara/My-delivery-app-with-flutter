import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white, // Change this to the desired color
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          elevation: 0,
          title: const Text('T I J A N I',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.white),
            ),
          ]),
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
      body: Container(
        decoration: const BoxDecoration(),
        child: const Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              fontSize: 28,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  ));
}
