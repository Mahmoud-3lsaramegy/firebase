// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  Input(this.scure, this.charscure,
      {super.key,
      required this.controller,
      required this.hint,
      required this.prefix});
  bool scure = false;
  String charscure = "*";
  final String hint;
  final Icon prefix;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //maxLines: 1,
        controller: controller,
        //cursorHeight: 100,
        obscureText: scure,
        obscuringCharacter: charscure,
        decoration: InputDecoration(
            //focusColor: const Color(0xffEFBF00),
            contentPadding: const EdgeInsets.all(27.5),
            prefixIcon: prefix,
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.5),
              borderSide: const BorderSide(
                color: Color(0xff707070),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.5),
              borderSide: const BorderSide(
                color: Color(0xff707070),
                width: 1,
              ),
            )));
  }
}
