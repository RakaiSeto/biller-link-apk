import 'package:biller_link/homepage.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sharedvar.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(result!.code.toString()),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
            Navigator.pop(context);
            Navigator.pop(context);
            return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('QRCode URL'),
            leading: BackButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ))),
          ),
          body: WebViewWidget(
            controller: controller,
          ),
        ));
  }
}
