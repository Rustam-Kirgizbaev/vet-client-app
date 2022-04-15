// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

AnimatedContainer dotIndicator(index, currentPage) {
  return AnimatedContainer(
    margin: EdgeInsets.only(right: 6),
    duration: Duration(milliseconds: 400),
    height: currentPage == index ? 15 : 11,
    width: currentPage == index ? 15 : 11,
    decoration: BoxDecoration(
      color: currentPage == index ? Colors.black : Colors.grey,
      shape: BoxShape.circle,
    ),
  );
}
