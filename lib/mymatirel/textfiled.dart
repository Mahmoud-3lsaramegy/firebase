import 'package:flutter/material.dart';

class input extends StatelessWidget {
  input(this.hint, this.prefix, this.scure, this.charscure, {super.key});
  bool scure = false;
  String charscure = "*";
  String hint;
  Icon prefix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: 1,
        //cursorHeight: 100,
        obscureText: scure,
        obscuringCharacter: charscure,
        decoration: InputDecoration(
            focusColor: Color(0xffEFBF00),
            contentPadding: const EdgeInsets.all(8.0),
            prefixIcon: prefix,
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xff707070),
                width: 3,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xffEFBF00),
                width: 3,
              ),
            )));
  }
}
