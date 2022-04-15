import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/font_style.dart';
import 'package:vet_clinic_project/components/size_config.dart';

Container getAboutHeader() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      'About Us',
      style: header,
    ),
  );
}

Container getAboutBody() {
  double sizeH = SizeConfig.blockSizeH!;
  return Container(
    width: sizeH * 70,
    alignment: Alignment.topCenter,
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'
      ' ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation'
      ' ullamco laboris nisi.',
      style: bodyText,
      textAlign: TextAlign.center,
    ),
  );
}

Container getAboutImg() {
  return Container(
    alignment: Alignment.center,
    child: Image.asset(
      'images/about.png',
      width: double.infinity,
    ),
  );
}

Container getGoalHeader() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      'Our Goal',
      style: header,
    ),
  );
}

Container getGoalBody() {
  double sizeH = SizeConfig.blockSizeH!;
  return Container(
    width: sizeH * 65,
    alignment: Alignment.center,
    child: Text(
      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore."',
      style: bodyTextItalic,
      textAlign: TextAlign.center,
    ),
  );
}
