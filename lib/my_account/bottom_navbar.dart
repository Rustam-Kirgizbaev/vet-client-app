import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) changeState;
  const BottomNavBar(
      {Key? key, required this.currentIndex, required this.changeState})
      : super(key: key);

  Widget buildNavButton(IconData icon, String label, int index) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(),
            color: currentIndex == index
                ? bottomNavBarCurrentPage
                : bottomNavBarColor),
        child: FlatButton(
          child: Column(children: [
            const SizedBox(height: 8),
            Icon(icon), // icon
            Text(label),
          ]),
          onPressed: () {
            changeState(index);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          buildNavButton(Icons.person, "Me", 0),
          buildNavButton(Icons.pets, "My Pets", 1),
          buildNavButton(Icons.history, "History", 2),
        ],
      ),
    );
  }
}
