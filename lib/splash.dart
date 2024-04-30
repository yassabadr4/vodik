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
      const Duration(seconds: 10),
      () async {
        await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyWebView(),
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
            const SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/iconApp.jpeg'),
            const Spacer(),
            const Text('Development by Otech Agency'),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
