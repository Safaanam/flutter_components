import 'package:flutter/material.dart';
import 'package:flutter_components/custom/custom_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Custom Alert Dialogue',
      home: MyHomePage(title: 'Flutter Custom Alert Dialogue'),
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
              ElevatedButton(
                  child: const Text("Custom Alert Dialogue"),
                onPressed: (){
                  showDialog(context: context,
                      builder: (BuildContext context){
                        return CustomDialogBox(
                          title: "Custom Dialog Demo",
                          descriptions: "This is a custom dialog in flutter ",
                          text: "okay",
                          img: Image.asset("assets/images/sample.png"),
                        );
                      }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
