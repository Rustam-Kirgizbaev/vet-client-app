import 'package:flutter/material.dart';
import 'package:vet_clinic_project/slider_home/animated_dot.dart';
import 'package:vet_clinic_project/slider_home/slider_home_data.dart';

Container storySlider() {
  return Container(
    height: 260,
    child: PageView(
      children: <Widget>[
        storyBuilder(data: sliderHomeContents[0], index: 0),
        storyBuilder(data: sliderHomeContents[1], index: 1),
        storyBuilder(data: sliderHomeContents[2], index: 2),
      ],
    ),
  );
}
