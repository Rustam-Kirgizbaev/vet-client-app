// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/size_config.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: appBar(withIcons: false, key: null, context: context),
      backgroundColor: mainBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: sizeV * 5,
                ),
                Container(
                    child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 73, 72, 70),
                      fontWeight: FontWeight.w600),
                )),
                SizedBox(
                  height: sizeV * 3,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                //isCollapsed: true,
                                contentPadding: const EdgeInsets.all(14.0),
                                hintText: "Name",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIconConstraints:
                                    const BoxConstraints(maxHeight: 20),
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 13.0),
                                  child: Image(
                                    image: AssetImage('images/user.png'),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                SizedBox(
                  height: sizeV * 2,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                //isCollapsed: true,
                                contentPadding: const EdgeInsets.all(14.0),
                                hintText: "Username",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIconConstraints:
                                    const BoxConstraints(maxHeight: 20),
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 13.0),
                                  child: Image(
                                    image: AssetImage('images/user.png'),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                SizedBox(
                  height: sizeV * 2,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                //isCollapsed: true,
                                contentPadding: const EdgeInsets.all(14.0),
                                hintText: "Pet name",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIconConstraints:
                                    const BoxConstraints(maxHeight: 25),
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 11.0),
                                  child: Image(
                                    image: AssetImage('images/pet_icon.png'),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                SizedBox(
                  height: sizeV * 2,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                isCollapsed: true,
                                contentPadding: const EdgeInsets.all(14.0),
                                hintText: "Pet type",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIconConstraints:
                                    const BoxConstraints(maxHeight: 25),
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 11.0),
                                  child: Image(
                                    image: AssetImage('images/pet_icon.png'),
                                  ),
                                ),
                                //color: Color.fromARGB(255, 182, 177, 177),

                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                SizedBox(
                  height: sizeV * 2,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                isCollapsed: true,
                                contentPadding:
                                    const EdgeInsets.only(top: 14.0),
                                hintText: "Phone number",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Color.fromARGB(255, 182, 177, 177),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                SizedBox(
                  height: sizeV * 2,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                isCollapsed: true,
                                contentPadding:
                                    const EdgeInsets.only(top: 14.0),
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Color.fromARGB(255, 182, 177, 177),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                SizedBox(
                  height: sizeV * 2,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            textInputAction: TextInputAction.done,
                            keyboardAppearance: Brightness.dark,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                isCollapsed: true,
                                contentPadding:
                                    const EdgeInsets.only(top: 14.0),
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIconConstraints: const BoxConstraints(
                                  maxHeight: 28,
                                  //maxWidth: 14,
                                ),
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 9.0),
                                  child: Image(
                                    image:
                                        AssetImage('images/password_icon.png'),
                                  ),
                                ),
                                //Icons.lock_outline_rounded,
                                //color: Color.fromARGB(255, 182, 177, 177)),
                                suffixIcon: const Icon(Icons.remove_red_eye,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 109, 74, 61),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ))))),
                Container(
                    width: 240,
                    alignment: Alignment.center,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Already have account?',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 147, 142, 142),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Login',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 147, 142, 142),
                                    ))),
                          )
                        ])),
                Container(
                  width: 110,
                  child: ElevatedButton(
                    child: const Text('Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        )),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 166, 149, 129)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: Color.fromARGB(255, 112, 112, 112))),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: sizeV * 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
