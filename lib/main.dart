import 'package:flutter/material.dart';
import 'package:flutter_components/pages/gridview_refresh.dart';
import 'package:flutter_components/pages/listview_refresh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Pull to Refresh',
      home: MyHomePage(title: 'Flutter Pull to Refresh'),
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
                    builder: (_) => ListViewRefreshPage()));
              },
                  child: const Text("Click for listView")),

              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => GridViewRefreshPage()));
              },
                  child: const Text("Click for gridView")),

            ],
          ),
        ),
      ),
    );
  }
}
