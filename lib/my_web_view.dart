
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  const MyWebView({super.key});

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

late WebViewController _controller;

class _MyWebViewState extends State<MyWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://vodik.vercel.app/',
        gestureNavigationEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
        javascriptChannels: <JavascriptChannel>[
          _getUserDataChannel(context),
        ].toSet(),
      ),
    );

  }
  JavascriptChannel _getUserDataChannel(BuildContext context) {
    return JavascriptChannel(
      name: 'UserDataChannel',
      onMessageReceived: (JavascriptMessage message) {
        _cacheUserData(message.message);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ModalRoute.of(context)?.addScopedWillPopCallback(() async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        }
        return true;
      });
    });
  }


  void _cacheUserData(String userData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_data', userData);
    print('user_data $userData');
    // You can perform further actions like navigation or displaying a message here
  }
}


