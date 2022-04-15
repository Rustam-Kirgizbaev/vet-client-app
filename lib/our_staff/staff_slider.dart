import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/font_style.dart';
import 'package:vet_clinic_project/components/size_config.dart';
import 'package:vet_clinic_project/our_staff/staff_slider_data.dart';
import 'package:vet_clinic_project/slider_home/slider_home_data.dart';

class StaffSlider extends StatefulWidget {
  const StaffSlider({Key? key}) : super(key: key);

  @override
  _StaffSliderState createState() => _StaffSliderState();
}

class _StaffSliderState extends State<StaffSlider> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: mainBackgroundColor,
      appBar: appBar(key: _scaffoldKey, context: context),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Our Staff',
                        style: header,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore\net dolore magna aliqua.',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 80.0,
                  left: 80.0,
                  //bottom: 60.0,
                ),
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: sliderHomeContents.length,
                  itemBuilder: (context, index) => Container(
                    // width: 300,
                    //height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          height: sizeV * 25,
                          child: IconButton(
                            iconSize: 35,
                            onPressed: () {
                              _pageController.previousPage(
                                  duration: const Duration(microseconds: 400),
                                  curve: Curves.easeInOut);
                            },
                            icon: const Icon(
                                Icons.keyboard_double_arrow_left_rounded),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                staffSliderContents[index].image,
                                fit: BoxFit.contain,
                                width: 105,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                staffSliderContents[index].title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                //textAlign: TextAlign.left,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 48.0),
                                          child: Text(
                                            staffSliderContents[index]
                                                .contentonetitle,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                height: 1.5),
                                            //textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 85.0),
                                          child: Text(
                                            staffSliderContents[index]
                                                .contentonelorem,
                                            style: const TextStyle(
                                                fontSize: 14, height: 1.5),
                                            //textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      staffSliderContents[index].contentone,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        height: 1.5,
                                      ),
                                      //textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: Text(
                                          staffSliderContents[index]
                                              .contenttwotitle,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            height: 1.5,
                                          ),
                                          //textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 90.0),
                                        child: Text(
                                          staffSliderContents[index]
                                              .contenttwoyears,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            height: 1.5,
                                          ),
                                          //textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 68.0),
                                    child: Text(
                                      staffSliderContents[index].contenttwo,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        height: 1.5,
                                      ),
                                      //textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          height: sizeV * 25,
                          child: IconButton(
                            iconSize: 35,
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: const Duration(microseconds: 400),
                                  curve: Curves.easeInOut);
                            },
                            icon: const Icon(
                                Icons.keyboard_double_arrow_right_rounded),
                          ),
                        ),
                        // Container(
                        //   child: getFooter(),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(height: 30.0),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: appBarColor,
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 1.0,
                    ),
                  ),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                height: 40,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
