import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splashscreen_loginpage/feature/onboard/view/onboard_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardView()));
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Cov1d App",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: Lottie.asset(
              "assets/lottie/savas_doc.json",
              /*height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width*/
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "by VBT",
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          )
        ],
      ),
    ));
  }
}
