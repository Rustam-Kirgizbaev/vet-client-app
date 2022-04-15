import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/models/client.dart';
import 'package:vet_clinic_project/my_account/input_builder.dart';

Widget meScreenbuild({required BuildContext context}) {
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
                      "Personal Information",
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
                      child: buildPersonalInfo(client),
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
                              child: Text("Edit",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white))),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: const Text(
                                        "Edit Personal\nInformation",
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Container(
                                        height: 400,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              inputBuilder("Name",
                                                  Icons.person_outline, null),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              inputBuilder("Username",
                                                  Icons.person_outline, null),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              inputBuilder(
                                                  "+998 (__) ___ __ __",
                                                  Icons.phone,
                                                  null),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              inputBuilder("Email",
                                                  Icons.mail_outline, null),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              passwordInputBuilder(null),
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

Padding buildPersonalInfo(Client client) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: [const Text("Client Id: "), Text(client.id)],
        ),
        Row(
          children: [const Text("Name: "), Text(client.fullname)],
        ),
        Row(
          children: [const Text("Username: "), Text(client.username)],
        ),
        Row(
          children: [const Text("Phone no: "), Text(client.phone)],
        ),
        Row(
          children: [const Text("Email: "), Text(client.email)],
        ),
        Row(
          children: [const Text("Password: "), Text(client.password)],
        ),
      ],
    ),
  );
}
