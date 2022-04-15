import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/font_style.dart';

Container _getCard(List<Widget> textWidgets) {
  return Container(
    width: 260,
    height: 170,
    margin: const EdgeInsets.all(55.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(255, 112, 112, 112),
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

Stack getFirstStaff() {
  return Stack(alignment: Alignment.topCenter, children: [
    _getCard([
      const SizedBox(
        height: 20,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0, top: 18.0),
        child: Text(
          'First Staff',
          style: homeCTitle,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          'Everyday\n9:00 ~ 19:00',
          style: staffRegular,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Text(
              'Lorem ipsum kind of\nveterinarian...',
              style: staffItalic,
              //textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 82.0, top: 8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  backgroundColor: const Color.fromRGBO(222, 209, 194, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(40.0, 20.0),
                ),
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(
                    color: Color.fromRGBO(73, 72, 70, 1),
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]),
    Container(
      alignment: Alignment.topCenter,
      width: 90,
      height: 90,
      //margin: EdgeInsets.all(0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(45.0)),
        border: Border.all(
            color: const Color.fromARGB(255, 100, 100, 100), width: 1.0),
        image: const DecorationImage(
          image: AssetImage('images/staff1.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ]);
}

Stack getSecondStaff() {
  return Stack(alignment: Alignment.topCenter, children: [
    _getCard([
      const SizedBox(
        height: 20,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0, top: 18.0),
        child: Text(
          'Second Staff',
          style: homeCTitle,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          'Everyday\n9:00 ~ 19:00',
          style: staffRegular,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Text(
              'Lorem ipsum kind of\nveterinarian...',
              style: staffItalic,
              //textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 82.0, top: 8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  backgroundColor: const Color.fromRGBO(222, 209, 194, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(40.0, 20.0),
                ),
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(
                    color: Color.fromRGBO(73, 72, 70, 1),
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]),
    Container(
      alignment: Alignment.topCenter,
      width: 90,
      height: 90,
      //margin: EdgeInsets.all(0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(45.0)),
        border: Border.all(
            color: const Color.fromARGB(255, 100, 100, 100), width: 1.0),
        image: const DecorationImage(
          image: AssetImage('images/staff2.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ]);
}

Stack getThirdStaff() {
  return Stack(alignment: Alignment.topCenter, children: [
    _getCard([
      const SizedBox(
        height: 20,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0, top: 18.0),
        child: Text(
          'Third Staff',
          style: homeCTitle,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          'Everyday\n9:00 ~ 19:00',
          style: staffRegular,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Text(
              'Lorem ipsum kind of\nveterinarian...',
              style: staffItalic,
              //textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 82.0, top: 8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  backgroundColor: const Color.fromRGBO(222, 209, 194, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(40.0, 20.0),
                ),
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(
                    color: Color.fromRGBO(73, 72, 70, 1),
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]),
    Container(
      alignment: Alignment.topCenter,
      width: 90,
      height: 90,
      //margin: EdgeInsets.all(0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(45.0)),
        border: Border.all(
            color: const Color.fromARGB(255, 100, 100, 100), width: 1.0),
        image: const DecorationImage(
          image: AssetImage('images/staff3.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ]);
}

Stack getFourthStaff() {
  return Stack(alignment: Alignment.topCenter, children: [
    _getCard([
      const SizedBox(
        height: 20,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0, top: 18.0),
        child: Text(
          'Fourth Staff',
          style: homeCTitle,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          'Everyday\n9:00 ~ 19:00',
          style: staffRegular,
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Text(
              'Lorem ipsum kind of\nveterinarian...',
              style: staffItalic,
              //textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 82.0, top: 8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  backgroundColor: const Color.fromRGBO(222, 209, 194, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(40.0, 20.0),
                ),
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(
                    color: Color.fromRGBO(73, 72, 70, 1),
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]),
    Container(
      alignment: Alignment.topCenter,
      width: 90,
      height: 90,
      //margin: EdgeInsets.all(0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(45.0)),
        border: Border.all(
            color: const Color.fromARGB(255, 100, 100, 100), width: 1.0),
        image: const DecorationImage(
          image: AssetImage('images/staff4.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ]);
}
