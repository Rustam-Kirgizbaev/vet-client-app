import 'package:flutter/material.dart';
import 'package:vet_clinic_project/about_us/about_us_data.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';
import 'package:vet_clinic_project/components/size_config.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: sizeV * 4,
              ),
              getAboutHeader(),
              SizedBox(
                height: sizeV * 2,
              ),
              getAboutBody(),
              SizedBox(
                height: sizeV * 3,
              ),
              getAboutImg(),
              SizedBox(
                height: sizeV * 3,
              ),
              getGoalHeader(),
              SizedBox(
                height: sizeV * 2,
              ),
              getGoalBody(),
              SizedBox(
                height: sizeV * 3,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              )
            ],
          ),
        ),
      ),
      backgroundColor: mainBackgroundColor,
    );
  }
}
