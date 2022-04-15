import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/expandable_panel.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';
import 'package:vet_clinic_project/faq/faq_data.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final List<ExpandablePanel> faqData = [];

    for (int i = 0; i < faqs.length; i++) {
      faqData.add(ExpandablePanel(
        title: faqs[i].question,
        expanded: buildFaqAnswer(faqs[i].answer),
        isHistory: true,
        multiline: true,
      ));
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 6),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50.0),
            const Text(
              "FAQ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[...faqData]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: appBarColor,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Container buildFaqAnswer(String answer) {
  return Container(
    decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 1.0),
          left: BorderSide(color: Colors.black, width: 1.0),
          right: BorderSide(color: Colors.black, width: 1.0),
        ),
        color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 24, top: 8, bottom: 8, right: 8),
      child: Text(
        answer,
        style: const TextStyle(fontSize: 12),
      ),
    ),
  );
}
