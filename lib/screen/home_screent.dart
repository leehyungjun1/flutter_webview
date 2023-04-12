import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//URI / URL을 생성하는데 도움을 주는 클래스
final uri = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(uri);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('CRM'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(uri);
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
        // onWebViewCreated: (WebViewController controller) {
        //   this.controller = controller;
        // },
        // initialUrl: 'https://blog.codefactory.ai',
        // javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
