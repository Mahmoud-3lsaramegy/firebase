import 'package:flutter/material.dart';

class sign extends StatelessWidget {
  const sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //logo
          Icon(
            Icons.event_note_outlined,
            size: 100,
          ),
          /**
           * input filed
           * users value
           */
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(),
              TextFormField(),
            ],
          )
        ]),
      )),
    );
  }
}
