// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/font_style.dart';
import 'package:vet_clinic_project/components/size_config.dart';
import 'package:vet_clinic_project/home_page/home.dart';
import 'package:vet_clinic_project/login_signup/login.dart';
import 'package:vet_clinic_project/onboarding/animated_dot.dart';
import 'package:vet_clinic_project/onboarding/button_actions.dart';
import 'package:vet_clinic_project/onboarding/onboard_data.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    //sp
    //sp
    SizeConfig().init(context);
    //double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    //sp
    //sp
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: sizeV * 8,
                    ),
                    Text(
                      onboardingContents[index].title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: sizeV * 5,
                    ),
                    Container(
                      height: sizeV * 45,
                      child: Image.asset(
                        onboardingContents[index].image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: sizeV * 9,
                    ),
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            currentPage == onboardingContents.length - 1
                                ? Container(
                                    child: Text(
                                      'Track all the information of your\n pet in one place',
                                      textAlign: TextAlign.center,
                                      style: onboardText,
                                    ),
                                  )
                                : currentPage == onboardingContents.length - 2
                                    ? Container(
                                        child: Text(
                                          'Get registered in our easy to use\n mobile application',
                                          textAlign: TextAlign.center,
                                          style: onboardText,
                                        ),
                                      )
                                    : Text(
                                        'Welcome to the mobile application\n of Vet Clinic',
                                        textAlign: TextAlign.center,
                                        style: onboardText,
                                      ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sizeV * 6,
                    ),
                    Expanded(
                      //flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OnboardNavBtn(
                            name: 'SKIP',
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                          ),
                          Row(
                            children: List.generate(
                              onboardingContents.length,
                              (index) => dotIndicator(index, currentPage),
                            ),
                          ),
                          currentPage == onboardingContents.length - 1
                              ? OnboardNavBtn(
                                  name: 'START',
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Login(),
                                      ),
                                    );
                                  },
                                )
                              : OnboardNavBtn(
                                  name: 'NEXT',
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
