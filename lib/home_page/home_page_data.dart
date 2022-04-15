// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/font_style.dart';

//puppy card
Stack getWorkHours() {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      _getCard([
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          child: Text(
            'Working Hours',
            style: homeCTitle,
          ),
        ),
        Text(
          'Everyday\n 9:00 ~ 19:00',
          style: homeCBody,
          textAlign: TextAlign.center,
        ),
      ]),
      Container(
        alignment: Alignment.topCenter,
        width: 90,
        height: 90,
        //margin: EdgeInsets.all(0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(45.0)),
          border: Border.all(color: Colors.black, width: 1.0),
          image: const DecorationImage(
            image: AssetImage('images/puppy.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

//Cat image & text
Stack getCat() {
  return Stack(
    alignment: Alignment.centerLeft,
    children: [
      Container(
        child: const Image(
          image: AssetImage(
            'images/home_cat.png',
          ),
          width: double.infinity,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Container(
          width: 110,
          child: const Text(
            'Making the access to the vet services easier',
            textAlign: TextAlign.center,
            style: homeCat,
          ),
        ),
      ),
    ],
  );
}

Stack getAppointment() {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      _getCard([
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          child: Text(
            'Easy Appointment',
            style: homeCTitle,
          ),
        ),
        Text(
          'Make appointment\n in one click',
          style: homeCBody,
          textAlign: TextAlign.center,
        ),
      ]),
      Container(
        alignment: Alignment.topCenter,
        width: 90,
        height: 90,
        //margin: EdgeInsets.all(0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(45.0)),
          border: Border.all(color: Colors.black, width: 1.0),
          image: const DecorationImage(
            image: AssetImage('images/home1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

Stack getConsultation() {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      _getCard([
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          child: Text(
            'Virtual Consultation',
            style: homeCTitle,
          ),
        ),
        Text(
          'Get a virtual consultation\n with our qualified staff',
          style: homeCBody,
          textAlign: TextAlign.center,
        ),
      ]),
      Container(
        alignment: Alignment.topCenter,
        width: 90,
        height: 90,
        //margin: EdgeInsets.all(0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(45.0)),
          border: Border.all(color: Colors.black, width: 1.0),
          image: const DecorationImage(
            image: AssetImage('images/home2.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

Stack getHealthRecord() {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      _getCard([
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          child: Text(
            'Track Pet\'s Health Record',
            style: homeCTitle,
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          'Have access to the health\n record of your pet',
          style: homeCBody,
        ),
      ]),
      Container(
        alignment: Alignment.topCenter,
        width: 90,
        height: 90,
        //margin: EdgeInsets.all(0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(45.0)),
          border: Border.all(color: Colors.black, width: 1.0),
          image: const DecorationImage(
            image: AssetImage('images/home3.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

//reusable card, used above to show different content,
//but the same styling and not to repeat the code
Container _getCard(List<Widget> textWidgets) {
  return Container(
    width: 250,
    height: 150,
    margin: const EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: textWidgets,
    ),
  );
}
