import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatelessWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web View Example"),
      ),
      body: const WebView(
          initialUrl: 'https://www.amazon.in/',
          javascriptMode: JavascriptMode.unrestricted
      ),
    );
  }
}
