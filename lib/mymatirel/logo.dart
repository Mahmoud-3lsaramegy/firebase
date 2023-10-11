import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo(this.topspace, this.bottomspace, this.sizew, this.sizeh, {super.key});
  double topspace, bottomspace, sizew, sizeh;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //logo
        SizedBox(
          width: double.infinity,
          height: topspace,
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8.0),
          child: Image.asset(
            "images/logo0.png",
            fit: BoxFit.contain,
            width: sizew,
            height: sizeh,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: bottomspace,
        ),
      ],
    );
  }
}
