import 'package:flutter/material.dart';
import 'package:vet_clinic_project/appointment/appointment.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/models/pet.dart';
import 'package:vet_clinic_project/my_account/input_builder.dart';

Widget petScreenbuild({required BuildContext context}) {
  List<Padding> petsData = [];
  for (int i = 0; i < pets.length; i++) {
    petsData.add(buildPetInfo(pets[i], i + 1, context));
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
                      "My Pets",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                          border: Border.all(), color: Colors.white),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ...petsData,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: buttonColor),
                        child: FlatButton(
                          child: const Center(
                              child: Text("Add New Pet",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white))),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: const Text(
                                        "Add New Pet",
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Container(
                                        height: 200,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              inputBuilder(
                                                  "Pet Name", Icons.pets, null),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              dropDownInputBuilder(
                                                  petTypes,
                                                  () {},
                                                  "Pet Type",
                                                  Icons.pets),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              buttonBuilder("Save"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    ],
  );
}

List<String> petTypes = [
  "Dog",
  "Cat",
  "Bird",
  "Fish",
  "Other",
];

Padding buildPetInfo(Pet pet, int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("$index. ${pet.name}"),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Text(
              "Pet Name: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pet.name,
              style: const TextStyle(
                  fontStyle: FontStyle.italic, color: petItalicTextColor),
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Text(
              "Pet Type: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pet.type,
              style: const TextStyle(
                  fontStyle: FontStyle.italic, color: petItalicTextColor),
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            buildButton("Edit", buttonColor, context),
            const SizedBox(width: 12.0),
            buildButton("Delete", deleteBtn, context),
          ],
        ),
      ],
    ),
  );
}

Container buildButton(String label, Color color, BuildContext context) {
  return Container(
    height: 25,
    width: 80,
    decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
        color: color),
    child: FlatButton(
      child: Center(
          child: Text(label,
              style: const TextStyle(fontSize: 16, color: Colors.white))),
      onPressed: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: const Text(
                    "Edit My Pets",
                    textAlign: TextAlign.center,
                  ),
                  content: Container(
                    height: 200,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          inputBuilder("Pet Name", Icons.pets, null),
                          const SizedBox(
                            height: 20,
                          ),
                          dropDownInputBuilder(
                              petTypes, () {}, "Pet Type", Icons.pets),
                          const SizedBox(
                            height: 20,
                          ),
                          buttonBuilder("Save"),
                        ],
                      ),
                    ),
                  ),
                ));
      },
    ),
  );
}
