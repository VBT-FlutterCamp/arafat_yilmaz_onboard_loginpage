import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splashscreen_loginpage/feature/onboard/model/onboard_model.dart';
import 'package:splashscreen_loginpage/feature/login/view/loginscreen.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  int _currentIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardList.length,
        onPageChanged: (pageindex) {
          setState(() {
            _currentIndex = pageindex;
          });
        },
        itemBuilder: (contex, index) {
          return Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [_skipButton(context)],
              ),
              const SizedBox(
                height: 10,
              ),
              LottieBuilder.asset(
                onboardList[index].lottieImage,
                height: 300,
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onboardList.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                        Text(
                          onboardList[index].title,
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //SizedBox(height: 20),
                        Text(
                          onboardList[index].discription,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: _backButton(context)),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(child: _nextButton(context))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  ElevatedButton _backButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
      child: const Text("Back"),
      onPressed: () {
        _pageController.animateToPage(_currentIndex - 1,
            duration: const Duration(milliseconds: 10), curve: Curves.bounceIn);
        _currentIndex -= 1;
      },
    );
  }

  TextButton _skipButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          /*_pageController.animateToPage(onboardList.length - 1,
              duration: const Duration(milliseconds: 10),
              curve: Curves.bounceIn);*/
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: const Text(
          "Atla",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }

  ElevatedButton _nextButton(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        //clipBehavior: Clip.antiAlias,
        onPressed: () {
          if (_currentIndex == onboardList.length - 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          } else {
            _pageController.animateToPage(_currentIndex + 1,
                duration: const Duration(milliseconds: 10),
                curve: Curves.bounceIn);
            _currentIndex += 1;
          }
        },
        child: const Text("Next"));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
