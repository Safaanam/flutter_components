import 'package:flutter/material.dart';
import 'package:flutter_components/nav_bar/animated_nav.dart';
import 'package:flutter_components/nav_bar/bottom_nav.dart';
import 'package:flutter_components/tab_bar/tab_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter NavBar and Tabbar',
      home: MyHomePage(title: 'Flutter'),
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
                    builder: (_) => const BottomNav()));
              },
                  child: const Text("Click for NavBar")),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const AnimatedNavBar()));
              },
                  child: const Text("Click For Animated NavBar")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const TabBarPage()));
              },
                  child: const Text("Click For TabBar")),
            ],
          ),
        ),
      ),
    );
  }
}
