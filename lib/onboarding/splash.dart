// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/size_config.dart';
import 'package:vet_clinic_project/onboarding/onboarding_page.dart';

//import 'components/colors.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2200), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      //backgroundColor: mainBackgroundColor,
      body: Center(
        child: Container(
          child: Image.asset(
            'images/splash.png',
            height: sizeV * 45,
          ),
        ),
      ),
    );
  }
}
