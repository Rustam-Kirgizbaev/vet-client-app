import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/footer_bar.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';
import 'package:vet_clinic_project/components/size_config.dart';
import 'package:vet_clinic_project/home_page/home_page_card.dart';
import 'package:vet_clinic_project/home_page/home_page_data.dart';
import 'package:vet_clinic_project/slider_home/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //double sizeV = SizeConfig.blockSizeV!;
    double sizeH = SizeConfig.blockSizeH!;
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const Menu(active: 0),
      appBar: appBar(key: _scaffoldKey, context: context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            homePageCard(
                context: context,
                image: "images/puppy.png",
                title: "Working Hours",
                description: "Everyday\n9:00 - 19:00"),
            const SizedBox(
              height: 20,
            ),
            getCat(),
            homePageCard(
                context: context,
                image: "images/home1.png",
                title: "Easy Appointment",
                description: "Make appointment in one click."),
            homePageCard(
                context: context,
                image: "images/home2.png",
                title: "Virtual Consultation",
                description:
                    "Get a virtual consultation from our qualified staff."),
            homePageCard(
                context: context,
                image: "images/home3.png",
                title: "Track Your Pet's Health Record",
                description: "Have access to the health record of your pet."),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              decoration:
                  BoxDecoration(border: Border.all(), color: appBarColor),
              alignment: Alignment.center,
              child: const Text(
                "Unforgettable\n      Stories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            storySlider(),
            getFooter(),
          ],
        ),
      ),
      backgroundColor: mainBackgroundColor,
    );
  }
}
