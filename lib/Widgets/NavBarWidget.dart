import 'package:flutter/material.dart';
import 'package:starbak_mart/Pages/HomePage.dart';
import 'package:starbak_mart/Pages/CartPage.dart';
import 'package:starbak_mart/Pages/AddPage.dart';

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbak Mart',
      home: Navbarwidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Navbarwidget extends StatefulWidget {
  @override
  _NavbarwidgetState createState() => _NavbarwidgetState();
}

class _NavbarwidgetState extends State<Navbarwidget> {
  int _currentIndex = 0;
  bool _isNavBarVisible = true;
  final List<Widget> _children = [
    HomePage(),
    CartPage(),
    AddPage(),
  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
      _isNavBarVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: _isNavBarVisible
      ?BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        selectedItemColor: const Color.fromARGB(217, 227, 111, 10),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Create',
          ),
        ],
      ) : null,
    );
  }
}
