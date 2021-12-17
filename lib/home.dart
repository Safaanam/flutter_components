import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Authenticated",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.deepPurpleAccent.shade400),
            ),
            const Icon(
              Icons.lock_open_outlined,
              size: 45,
              color: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
