import 'package:flutter/material.dart';
import 'package:vet_clinic_project/about_us/about_us.dart';
import 'package:vet_clinic_project/appointment/appointment.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/menu/menu_header.dart';
import 'package:vet_clinic_project/components/menu/menu_item.dart';
import 'package:vet_clinic_project/components/menu/menu_item_separator.dart';
import 'package:vet_clinic_project/contact-us/contact.dart';
import 'package:vet_clinic_project/faq/faq.dart';
import 'package:vet_clinic_project/home_page/home.dart';
import 'package:vet_clinic_project/login_signup/login.dart';
import 'package:vet_clinic_project/my_account/my_account.dart';
import 'package:vet_clinic_project/our_staff/our_staff.dart';
import 'package:vet_clinic_project/services/services_and_fees.dart';

class Menu extends StatelessWidget {
  final int active;
  const Menu({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: mainBackgroundColor,
        child: Column(
          children: <Widget>[
            menuHeader(context: context),
            menuItemSeparator(),
            menuItemBuilder("images/home.png", "Home", active == 0, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("images/animals.png", "About us", active == 1, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUs()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("images/user.png", "My Account", active == 2, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyAccountPage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder(
                "images/technical-support.png", "Services & Fees", active == 3,
                (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ServiceFee()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder(
                "images/calendar.png", "Make Appointment", active == 4, (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AppointmentPage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("images/veterinary.png", "Our Staff", active == 5,
                (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OurStaff()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("images/help.png", "FAQ", active == 6, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FAQPage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("images/location.png", "Contact Us", active == 7,
                (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("images/log-out.png", "Log Out", active == 8, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            })),
            menuItemSeparator(),
            const SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              "images/transparent_cat.png",
              width: 200,
              height: 200,
            ))
          ],
        ));
  }
}
