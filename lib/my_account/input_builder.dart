import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/colors.dart';

Widget inputBuilder(
    String hint, IconData icon, TextEditingController? controller) {
  return TextField(
      controller: controller,
      textInputAction: TextInputAction.next,
      keyboardAppearance: Brightness.dark,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          isCollapsed: true,
          contentPadding: const EdgeInsets.only(top: 14.0),
          hintText: hint,
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color.fromARGB(255, 182, 177, 177)),
          prefixIcon: Icon(
            icon,
            color: const Color.fromARGB(255, 182, 177, 177),
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
          )));
}

Widget buttonBuilder(String label) {
  return Container(
      height: 40,
      width: 180,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(20),
          color: buttonColor),
      child: FlatButton(
        child: Center(
            child: Text(label,
                style: const TextStyle(fontSize: 20, color: Colors.white))),
        onPressed: () {},
      ));
}

Widget passwordInputBuilder(TextEditingController? controller) {
  return TextField(
      controller: controller,
      textInputAction: TextInputAction.done,
      keyboardAppearance: Brightness.dark,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          isCollapsed: true,
          contentPadding: const EdgeInsets.only(top: 14.0),
          hintText: "Password",
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color.fromARGB(255, 182, 177, 177)),
          prefixIcon: const Icon(Icons.lock_outline_rounded,
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
          )));
}
