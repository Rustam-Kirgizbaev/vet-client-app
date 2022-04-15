import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/notification/notification.dart';

AppBar appBar(
    {bool withIcons = true,
    GlobalKey<ScaffoldState>? key,
    required BuildContext context}) {
  return AppBar(
    backgroundColor: appBarColor,
    leading: Container(
      child: Image.asset("images/logoIcon.png"),
      margin: const EdgeInsets.all(8.0),
    ),
    title: const Text(
      "VET CLINIC",
      style: TextStyle(color: Colors.black),
    ),
    actions: withIcons
        ? <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {
                key?.currentState?.openEndDrawer();
              },
            )
          ]
        : [
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.transparent,
                size: 32,
              ),
              onPressed: () {},
            )
          ],
  );
}
