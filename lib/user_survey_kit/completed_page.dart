import 'package:flutter/material.dart';

Widget CompletedPage() {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Survey Completed"),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Image(image: AssetImage('assets/images/completed.png')),
      ],
    ),
  );
}
