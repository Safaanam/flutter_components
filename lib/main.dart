import 'package:flutter/material.dart';
import 'package:flutter_components/page/left_slide_example.dart';
import 'package:flutter_components/page/right_slide_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slideable Action Button',
      home: MyHomePage(title: 'Flutter Slideable Action Button'),
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
                    builder: (_) => const LeftSliding()));
              },
                  child: const Text("Click for left sliding example")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const RightSliding()));
              },
                  child: const Text("Click for right sliding example")),
            ],
          ),
        ),
      ),
    );
  }
}
