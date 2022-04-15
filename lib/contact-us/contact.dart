import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 7),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50.0),
              const Text(
                "Contact Us",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 205,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            singleInfo(
                                "images/contact/phone.png",
                                Column(
                                  children: const [
                                    Text("+998 (93) 765 43 21"),
                                    Text("+998 (97) 765 43 21")
                                  ],
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            singleInfo("images/contact/instagram.png",
                                const Text("@vetclinic_uz")),
                            const SizedBox(
                              height: 8,
                            ),
                            singleInfo("images/telegram.png",
                                const Text("@vetclinic_uz")),
                            singleInfo("images/contact/email.png",
                                const Text("vetclinic@gmail.com")),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Address: Istikbol Street,",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Tashkent, Uzbekistan",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 300,
          color: appBarColor,
          child: Column(
            children: [
              Container(
                height: 250,
                decoration:
                    BoxDecoration(border: Border.all(), color: Colors.white),
                child: const Center(
                    child: Text(
                  "Map",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Row singleInfo(String image, Widget widget) {
  return Row(
    children: [
      Image.asset(
        image,
        width: 40,
        height: 40,
      ),
      const SizedBox(
        width: 10,
      ),
      widget
    ],
  );
}
