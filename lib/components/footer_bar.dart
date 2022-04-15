// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:vet_clinic_project/components/colors.dart';

Container getFooter() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: bottomNavBarColor,
      border: Border.symmetric(
        horizontal: BorderSide(
          width: 1.0,
        ),
      ),
    ),
  );
}
