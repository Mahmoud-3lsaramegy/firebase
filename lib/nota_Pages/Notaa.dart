import 'package:firebace/mymatirel/textfiled_note%20bage.dart';
import 'package:flutter/material.dart';

class note extends StatelessWidget {
  const note({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const InkWell(
              child: Text("NOTER"),
            ),
            SizedBox(
                width: 50, height: 50, child: Image.asset("images/logo0.png"))
          ],
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Center(
              child: IconButton(
                hoverColor: const Color.fromARGB(206, 255, 255, 255),
                onPressed: () {},
                icon: const Icon(
                  Icons.save_alt,
                  size: 35,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xffEFBF00),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Notegetr(
                xlines: 2,
                mlines: 1,
                lable: const Icon(
                  Icons.title_rounded,
                  size: 25,
                ),
              ),
              Notegetr(
                xlines: 1000,
                mlines: 35,
                lable: const Icon(
                  Icons.note_alt_rounded,
                  size: 55,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
