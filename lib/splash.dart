import 'package:flutter/material.dart';
import 'package:vodik/my_web_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () async {
        await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyWebView(),
            ));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/iconApp.jpeg'),
          ],
        ),
      ),
    );
  }
}
