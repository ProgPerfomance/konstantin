import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konstantin/view/HomeScreen/HomeScreen.dart';
import 'package:konstantin/view/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class IvendPay extends StatelessWidget {
  const IvendPay({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1)).then(
          (value) => SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarDividerColor: Colors.grey,
        ),
      ),
    );
    return MyApp();

  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1)).then(
          (value) => SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarDividerColor: Colors.grey,
        ),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

