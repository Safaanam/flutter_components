import 'package:flutter/material.dart';
import 'package:flutter_components/web_view/local_HTML.dart';
import 'package:flutter_components/web_view/webViewExample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WebView',
      home: MyHomePage(title: 'Flutter WebView'),
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
              ElevatedButton( onPressed: () { Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WebViewExample()));},
                child: const Text('Click for webview with URL'),
              ),
              ElevatedButton( onPressed: () { Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LocalWebView()));},
                child: const Text('Click for webview of local HTML'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
