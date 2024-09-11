import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(context) {
    return NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        indicatorShape:
            const Border(top: BorderSide(color: Colors.deepPurple, width: 4)),
        elevation: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            selectedIcon: Icon(Icons.home_outlined, color: Colors.deepPurple),
          ),
          NavigationDestination(
            icon: Icon(Icons.store_outlined),
            label: 'My Orders',
            selectedIcon: Icon(Icons.store_outlined, color: Colors.deepPurple),
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_none),
            label: 'Notifications',
            selectedIcon:
                Icon(Icons.notifications_none, color: Colors.deepPurple),
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
            selectedIcon:
                Icon(Icons.account_circle_outlined, color: Colors.deepPurple),
          ),
        ]);
  }
}
