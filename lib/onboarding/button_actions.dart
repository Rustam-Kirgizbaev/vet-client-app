// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';

class OnboardNavBtn extends StatelessWidget {
  const OnboardNavBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: appBarColor,
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Text(
          name,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
