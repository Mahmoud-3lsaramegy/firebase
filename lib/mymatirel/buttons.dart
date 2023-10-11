import 'package:flutter/material.dart';

class Buttonsaramegy_text extends StatelessWidget {
  Color color_button;
  double width, height, round;
  Widget titel;

  var Button = () {};
  Buttonsaramegy_text(this.color_button, this.width, this.height, this.titel,
      this.Button, this.round,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Button();
      },
      style: ButtonStyle(
        //overlayColor: MaterialStateProperty.all(const Color(0xff72716D)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(round),
        )),
        backgroundColor: MaterialStateProperty.all(color_button),
        fixedSize: MaterialStateProperty.all(Size(width, height)),
      ),
      child: titel,
    );
  }
}
