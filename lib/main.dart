import 'package:flutter/material.dart';
import 'package:flutter_components/custom/view/credit_card.dart';
import 'package:flutter_components/package/package_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (_) => CreditCardsPage())
            );},
                child: const Text("Custom Card UI")
            ),
            ElevatedButton(onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (_) => CardPage())
            );},
                child: const Text("Credit Card package")
            ),
          ],
        ),
      ),
    );
  }
}
