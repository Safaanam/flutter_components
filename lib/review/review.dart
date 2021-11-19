import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ratings"),
      ),
      body: Center(
          child: Container(
            height: 200,
            width: 350,
            color: Colors.deepPurpleAccent[100],
          )
      ),
    );
  }
}
