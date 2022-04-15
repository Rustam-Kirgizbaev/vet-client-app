import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/expandable_panel.dart';
import 'package:vet_clinic_project/models/client.dart';
import 'package:vet_clinic_project/models/pet.dart';

Column historyScreenbuild() {
  List<Padding> historyData = [];
  for (int i = 0; i < pets.length; i++) {
    historyData.add(buildHistory(pets[i], i + 1));
  }

  return Column(
    children: <Widget>[
      const SizedBox(height: 50.0),
      const Text(
        "My Account",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 20.0),
      Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            height: 400,
            decoration:
                BoxDecoration(border: Border.all(), color: personalInfoCard),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "My Pets' Medical History",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [...historyData],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    ],
  );
}

GestureDetector buildUrl(String url) {
  return GestureDetector(
    child: const Text("download",
        style: TextStyle(
            decoration: TextDecoration.underline, color: Colors.blue)),
    onTap: () async {
      if (await canLaunch(url)) launch(url);
    },
  );
}

Container buildHistoryDetail(String analysisUrl, String prescriptionUrl) {
  return Container(
    decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 1.0),
          left: BorderSide(color: Colors.black, width: 1.0),
          right: BorderSide(color: Colors.black, width: 1.0),
        ),
        color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Analysis: "),
              buildUrl(analysisUrl),
              const SizedBox(
                width: 8.0,
              ),
              const Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              const Text("Prescription: "),
              buildUrl(prescriptionUrl),
              const SizedBox(
                width: 8.0,
              ),
              const Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Padding buildHistory(Pet pet, int index) {
  List<ExpandablePanel> data = [];
  for (int i = 0; i < pet.dates.length; i++) {
    data.add(ExpandablePanel(
      title: pet.dates[i],
      expanded: buildHistoryDetail("https://google.com", "https://youtube.com"),
      isHistory: true,
    ));
  }
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$index. ${pet.name}"),
        const SizedBox(
          height: 8,
        ),
        Column(
          children: [...data],
        ),
      ],
    ),
  );
}
