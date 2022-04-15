import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/font_style.dart';
import 'package:vet_clinic_project/components/footer_bar.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';
import 'package:vet_clinic_project/components/size_config.dart';
import 'package:vet_clinic_project/our_staff/staff_data.dart';

class OurStaff extends StatelessWidget {
  const OurStaff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //double sizeV = SizeConfig.blockSizeV!;
    // double sizeH = SizeConfig.blockSizeH!;
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: mainBackgroundColor,
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 5),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'Our Staff',
              style: header,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: getFirstStaff(),
          ),
          Container(
            alignment: Alignment.center,
            child: getSecondStaff(),
          ),
          Container(
            alignment: Alignment.center,
            child: getThirdStaff(),
          ),
          Container(
            alignment: Alignment.center,
            child: getFourthStaff(),
          ),
          getFooter(),
        ]),
      ),
    );
  }
}
