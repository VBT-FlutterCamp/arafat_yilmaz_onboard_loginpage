import 'package:flutter/material.dart';
import 'package:splashscreen_loginpage/feature/onboard/view/onboard_view.dart';
import 'package:splashscreen_loginpage/feature/splash/splash_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primaryColor: const Color.fromARGB(97, 124, 25, 103)),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
