import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: const Center(
          child: Text("Cart Page",
            style: TextStyle(fontSize: 30),
          )
      ),
    );
  }
}
