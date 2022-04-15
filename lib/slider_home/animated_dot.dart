import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/slider_home/slider_home_data.dart';

Column storyBuilder({required SliderHomeData data, required int index}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                data.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                data.content,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            data.image,
            width: 170,
            height: 170,
          ),
        )
      ]),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              width: 150,
            ),
            createDot(index == 0),
            createDot(index == 1),
            createDot(index == 2),
            const SizedBox(
              width: 150,
            ),
          ],
        ),
      )
    ],
  );
}

Container createDot(bool active) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5.0),
    height: 20,
    width: 20,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(),
        color: active ? appBarColor : Colors.white),
  );
}
