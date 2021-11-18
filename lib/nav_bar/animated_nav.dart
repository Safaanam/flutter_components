import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_components/nav_bar/account.dart';
import 'package:flutter_components/nav_bar/cart.dart';
import 'package:flutter_components/nav_bar/home.dart';


class AnimatedNavBar extends StatefulWidget {
  const AnimatedNavBar({Key? key}) : super(key: key);

  @override
  State<AnimatedNavBar> createState() => _AnimatedNavBarState();
}

class _AnimatedNavBarState extends State<AnimatedNavBar> {
  int index = 0;
  final screens = [
    const Home(),
    const Cart(),
    const Account()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          backgroundColor: const Color(0xFFe6e6fa),
          buttonBackgroundColor: const Color(0xFFfae6fa),
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) => setState(() => this.index = index),

        ),
      ),
    );
  }
}
