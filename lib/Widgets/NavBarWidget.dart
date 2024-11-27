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
    Homepage(),
    Cartpage(),
    Addpage(),
  ];
  
  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
      _isNavBarVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: _isNavBarVisible
      ?BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        selectedItemColor: const Color(0xD9E36F0A),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            size: screenWidth * 0.06,
            ),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
            size: screenWidth * 0.06,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add,
            size: screenWidth * 0.06,
            ),
            label: 'Create',
          ),
        ],
        selectedLabelStyle: TextStyle(
                fontSize: screenHeight * 0.02, 
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: screenHeight * 0.018,
              ),
      ) : null,
    );
  }
}
