import 'package:flutter/material.dart';

class Notegetr extends StatelessWidget {
  Notegetr(
      {super.key,
      required this.xlines,
      required this.mlines,
      required this.lable});
  int xlines = 0, mlines = 0;
  Widget lable;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12.5, left: 18.5, right: 18.5),
      child: TextFormField(
        cursorColor: Colors.yellow,
        style: const TextStyle(fontFamily: "Cairo"),
        autofocus: true,
        decoration: InputDecoration(
          hoverColor: Colors.yellow,
          focusColor: Colors.yellow,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEFBF00), width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEFBF00), width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          label: lable,
        ),
        maxLines: xlines,
        minLines: mlines,
        // maxLength: 30,
      ),
    );
  }
}
