import 'package:flutter/material.dart';
import 'package:flutter_components/crypto_hashing/crypto.dart';
import 'package:flutter_components/encrypt_package/encryption_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter encryption',
      home: MyHomePage(title: 'Flutter Encryption'),
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
                    builder: (_) => const EncryptionUI()));
              },
                  child: const Text("Encryption Package")),
               ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const crypto()));
              },
                  child: const Text("Crypto Hashing")),
              /*ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const Review()));
              },
                  child: const Text("Click for Review")), */
            ],
          ),
        ),
      ),
    );
  }
}
