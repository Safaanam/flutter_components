import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/elevated_button.dart';
import 'package:flutter_components/widgets/text_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Themed Button',
      home: MyHomePage(title: 'Flutter Themed Button'),
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
      body: SingleChildScrollView(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(height: 300,),
                  TextButtonWidget(text: "Text Button",),
                  SizedBox(height: 20,),
                  ElevatedButtonWidget( height: 50,
                    width: 150,
                      childWidget: Text("Elevated Button"),),
                ],
              ))
      ),
    );
  }
}
