import 'package:flutter/material.dart';
import 'package:flutter_components/face/ui/face_recognition.dart';
import 'package:flutter_components/fingerprint/ui/fingerprint.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      home: MyHomePage(title: 'Flutter Auth'),
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
              ElevatedButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FingerprintPage()));},
                  child: const Text("Fingerprint Authentication")),
              ElevatedButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FacePage()));},
                  child: const Text("Face Recognition")),
            ],
          ),
        ),
      ),
    );
  }
}
