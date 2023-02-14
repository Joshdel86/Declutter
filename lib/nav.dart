import 'package:declutter/homepage.dart';
import 'package:flutter/material.dart';


class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        'Add',
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        'People',
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 60),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery), label: ''),
          ]),
    );
  }
}
