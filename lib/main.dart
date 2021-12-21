import 'package:flutter/material.dart';
import 'package:flutter_components/currency_conversion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Conversion',
      home: MyHomePage(title: 'Currency Conversion'),
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
                  MaterialPageRoute(builder: (_) => const CurrencyConversion()));},
                  child: const Text("Currency Conversion"),
              ),
              ElevatedButton(onPressed: () { },
              /*Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AllCurrenciesDisplayed()));
              }, */
                child: const Text("Currency API"),
              )
            ],
          )
        ),
      ),
    );
  }
}
