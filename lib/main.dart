import 'package:flutter/material.dart';
import 'package:flutter_components/rating/app_rating.dart';
import 'package:flutter_components/rating/rating.dart';
import 'package:flutter_components/review/review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Reviews',
      home: MyHomePage(title: 'Rating and Reviews'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const Rating()));
              },
                  child: const Text("Click for Rating")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const AppRating()));
              },
                  child: const Text("Click for App Rating")),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const Review()));
              },
                  child: const Text("Click for Review")),
            ],
          ),
        ),
      ),
    );
  }
}
