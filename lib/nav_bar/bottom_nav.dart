import 'package:flutter/material.dart';
import 'package:flutter_components/nav_bar/account.dart';
import 'package:flutter_components/nav_bar/cart.dart';
import 'package:flutter_components/nav_bar/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screens = [
    const Home(),
    const Cart(),
    const Account()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: const Color(0xFF667db6),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 18.0,
        unselectedFontSize: 15.0,
        elevation: 5,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(label: 'Home',
            icon: Icon(Icons.home_outlined),
            backgroundColor: Color(0xFF667db6),
          ),
          BottomNavigationBarItem(label: 'Cart',
          icon: Icon(Icons.shopping_cart_outlined),
            backgroundColor: Color(0xFF667db6),
          ),
          BottomNavigationBarItem(label: 'Account',
            icon: Icon(Icons.person_outline_outlined),
            backgroundColor: Color(0xFF667db6),
          )
        ],
      ),
    );
  }
}
