import 'package:firebace/firebace/email_auth/sign_up.dart';
import 'package:firebace/mymatirel/buttons.dart';
import 'package:firebace/mymatirel/logo.dart';
import 'package:firebace/mymatirel/textfiled.dart';
import 'package:flutter/material.dart';

class createmail extends StatelessWidget {
  const createmail({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController upEmail = TextEditingController();
    TextEditingController upPassword = TextEditingController();
    TextEditingController username = TextEditingController();
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///logo
              Logo(100, 50, 100, 100),
              // text filed area signup page
              /// textfild #1
              Container(
                  margin: const EdgeInsets.all(13.5),
                  child: Input(
                    false,
                    " ",
                    hint: "Name",
                    controller: name,
                    prefix: const Icon(Icons.person),
                  )),

              /// textfild #2
              Container(
                  margin: const EdgeInsets.all(13.5),
                  child: Input(
                    false,
                    " ",
                    hint: "Email",
                    controller: upEmail,
                    prefix: const Icon(Icons.email),
                  )),

              /// textfild #3

              Container(
                  margin: const EdgeInsets.all(13.5),
                  child: Input(
                    true,
                    "*",
                    hint: "Password",
                    controller: upPassword,
                    prefix: const Icon(Icons.password),
                  )),

              Container(
                  margin: const EdgeInsets.all(13.5),
                  child: Input(
                    false,
                    " ",
                    hint: "@username",
                    controller: username,
                    prefix: const Icon(Icons.supervised_user_circle),
                  )),

              //button filed signup page
              const SizedBox(
                height: 50,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(12.5),
                child: Buttonsaramegy_text(
                    const Color(0xffEFBF00), 0.0, 50, const Text("SignUp"), () {
                  Createmail(
                          emailAddress: upEmail.text, password: upPassword.text)
                      .email_auth(context);
                }, 15),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(12.5),
                child: Buttonsaramegy_text(const Color(0xff72716D), 0.0, 50,
                    const Text("I have an account"), () {
                  Navigator.of(context).pushReplacementNamed("signin");
                }, 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
