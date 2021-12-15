import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_components/constants/HTML_data.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LocalWebView extends StatefulWidget {
  const LocalWebView({Key? key}) : super(key: key);

  @override
  State<LocalWebView> createState() => _LocalWebViewState();
}

class _LocalWebViewState extends State<LocalWebView> {
  late WebViewController controller;

  void loadLocalHTML() async{
    final url = Uri.dataFromString(localExamplePage,
    mimeType: 'text/html',
    encoding: Encoding.getByName('utf-8'),
    ).toString();
    controller.loadUrl(url);
  }

  /// for HTML asset files use this
  /*
  void loadLocalHTMLfile() async{
    final html = await rootBundle.loadString('assets/index.html');
    final url = Uri.dataFromString(html,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString();
    controller.loadUrl(url);
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("local WebView"),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          this.controller = controller;
          loadLocalHTML();
        }
      ),

    );
  }
}
