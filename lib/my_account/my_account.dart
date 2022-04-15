import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';
import 'package:vet_clinic_project/my_account/bottom_navbar.dart';
import 'package:vet_clinic_project/my_account/history.dart';
import 'package:vet_clinic_project/my_account/me.dart';
import 'package:vet_clinic_project/my_account/pets.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  int _index = 0;

  void changeState(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    List<Widget> pages = [
      meScreenbuild(context: context),
      petScreenbuild(context: context),
      historyScreenbuild()
    ];

    return Scaffold(
        key: _scaffoldKey,
        appBar: appBar(key: _scaffoldKey, context: context),
        endDrawer: const Menu(active: 2),
        backgroundColor: mainBackgroundColor,
        body: SingleChildScrollView(child: pages[_index]),
        bottomNavigationBar:
            BottomNavBar(currentIndex: _index, changeState: changeState));
  }
}
