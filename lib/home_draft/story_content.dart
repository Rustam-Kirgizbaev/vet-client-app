import 'package:flutter/material.dart';

class StoryContent extends StatelessWidget {
  const StoryContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          text!,
        ),
        Image.asset(
          image!,
          height: 80,
          //width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
