// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';

import 'package:vet_clinic_project/components/size_config.dart';
import 'package:vet_clinic_project/functions/auth.dart';
import 'package:vet_clinic_project/home_page/home.dart';
import 'package:vet_clinic_project/login_signup/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
                  height: sizeV * 10,
                ),
                Container(
                    child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 73, 72, 70),
                      fontWeight: FontWeight.w600),
                )),
                SizedBox(
                  height: sizeV * 4,
                ),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            controller: usernameController,
                            textInputAction: TextInputAction.next,
                            keyboardAppearance: Brightness.dark,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                isCollapsed: true,
                                contentPadding:
                                    const EdgeInsets.only(top: 14.0),
                                hintText: "Username",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 182, 177, 177)),
                                prefixIcon: const Icon(
                                  Icons.person_outline,
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
                  height: sizeV * 3,
                ),

                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextField(
                            controller: passwordController,
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
                                prefixIcon: const Icon(
                                    Icons.lock_outline_rounded,
                                    color: Color.fromARGB(255, 182, 177, 177)),
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
                    width: 220,
                    alignment: Alignment.center,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => const AlertDialog(
                                        title: Text("Forgot password?"),
                                        content: Text(
                                            "In case you forgot your password, please, contact your administrator")));
                              },
                              child: const Text('Forgot password?',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 147, 142, 142),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()),
                                  );
                                },
                                child: const Text('Sign up',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 147, 142, 142),
                                    ))),
                          )
                        ])),
                // SizedBox(
                //   height: sizeV * 2,
                // ),
                Container(
                  width: 110,
                  child: ElevatedButton(
                    child: const Text('Login',
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
                    onPressed: () {
                      if (authenticate(
                          usernameController.text, passwordController.text)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      } else {
                        usernameController.text = passwordController.text = "";
                        showDialog(
                            context: context,
                            builder: (_) => const AlertDialog(
                                title: Text("Incorrect input!"),
                                content: Text(
                                    "Incorrect username or password. Please try again")));
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: sizeV * 2,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('images/transparent_cat.png'),
                    height: 230,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
