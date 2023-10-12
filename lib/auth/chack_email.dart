import 'package:firebace/mymatirel/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailChacker extends StatelessWidget {
  const EmailChacker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(12.5),
                  child: const Text(
                    "Please check your inbox for any missing emails. If you do not find any emails, please check your email settings to make sure that your inbox is not full or blocked.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(12.5),
                  child: Buttonsaramegy_text(const Color(0xffEFBF00), 0.0, 50,
                      const Text("I Verified myEmail"), () {
                    if (FirebaseAuth.instance.currentUser!.emailVerified ==
                        true) {
                      Navigator.of(context).pushReplacementNamed("Gellrey");
                    }
                  }, 15),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(12.5),
                  child: Buttonsaramegy_text(const Color(0xff72716D), 0.0, 50,
                      const Text("Rsand Email"), () {
                    FirebaseAuth.instance.currentUser!.sendEmailVerification();
                  }, 15),
                )
              ],
            ),
          )),
    );
  }
}
