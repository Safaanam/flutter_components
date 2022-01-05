import 'package:flutter/material.dart';
import 'package:flutter_components/inbuilt/image_scaling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cards',
      home: MyHomePage(title: 'Flutter CardView'),
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
              ElevatedButton(onPressed: () { Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ImageScaling()));
              },
                  child: const Text("Inbuilt scaling option")
              ),
              ElevatedButton(onPressed: () {},
                  child: const Text("scaling from package option")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
