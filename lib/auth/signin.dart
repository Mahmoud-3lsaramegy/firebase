import 'package:firebace/firebace/email_auth/login.dart';
import 'package:firebace/mymatirel/buttons.dart';
import 'package:firebace/mymatirel/logo.dart';
import 'package:firebace/mymatirel/textfiled.dart';
import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //logo
                  Logo(100, 100, 100, 120),
/*
* input filed
* users value
 */
//Email input
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          margin: const EdgeInsets.all(18.5),
                          child: Input(
                            false,
                            " ",
                            hint: "Email",
                            controller: email,
                            prefix: const Icon(Icons.email),
                          )),
// password
//password input
                      Container(
                          margin: const EdgeInsets.all(18.5),
                          child: Input(
                            false,
                            " ",
                            hint: "Passw*rd",
                            controller: password,
                            prefix: const Icon(Icons.password),
                          )),
                    ],
                  ),

                  ///Buttons To auth function
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 25,
                      ),
                      Container(
                        margin: const EdgeInsets.all(18.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Buttonsaramegy_text(
                                const Color(0xffEFBF00),
                                175,
                                50,
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.login_outlined)
                                  ],
                                ), () {
                              Login_email(
                                emailAddressL: email.text,
                                passwordL: password.text,
                              ).auth_opation(context);
                            }, 25),
                            Buttonsaramegy_text(
                                const Color(0xff72716D),
                                175,
                                50,
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Creat Email",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    Icon(Icons.add_circle_outline)
                                  ],
                                ), () {
                              Navigator.of(context)
                                  .pushReplacementNamed("signup");
                            }, 25),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 18.5, vertical: 5.5),
                          child: const InkWell(
                            child: Text("forget password ?",
                                style: TextStyle(
                                  color: Color(0xffEFBF00),
                                )),
                          )),
                      /////social auth button
                      const SizedBox(
                        width: double.infinity,
                        height: 25,
                      ),
                      Container(
                        margin: const EdgeInsets.all(18.5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Buttonsaramegy_text(
                                  const Color(0xff72716D),
                                  75,
                                  75,
                                  ImageIcon(AssetImage("images/google.png")),
                                () {
                                Navigator.pushNamed(context, "Gellrey");
                              }, 50),
                              Buttonsaramegy_text(
                                  const Color(0xff72716D),
                                  75,
                                  75,
                                  const Icon(Icons.apple_outlined,
                                      size: 40, color: Colors.white),
                                  () {},
                                  50),
                              Buttonsaramegy_text(
                                  const Color(0xff72716D),
                                  75,
                                  75,
                                  const Icon(
                                    Icons.facebook_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  () {},
                                  50)
                            ]),
                      )
                    ],
                  ),
                ]),
          )),
    );
  }
}
