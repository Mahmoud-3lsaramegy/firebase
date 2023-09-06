import 'package:firebace/mymatirel/buttons.dart';
import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  width: double.infinity,
                  height: 100,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 16.0, bottom: 16.0, right: 16.0),
                  width: 150,
                  height: 150,
                  //decoration: BoxDecoration(//borderRadius: BorderRadius.circular(75),//color: Color.fromARGB(255, 236, 233, 233)),
                  child: Image.asset(
                    "images/logo0.png",
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 100,
                ),
                /*
                   * input filed
                   * users value
                   */

//Email input
                Container(
                  margin: const EdgeInsets.all(18.5),
                  child: TextFormField(
                      maxLines: 1,
                      //cursorHeight: 100,
                      decoration: InputDecoration(
                          focusColor: Color(0xffEFBF00),
                          contentPadding: const EdgeInsets.all(8.0),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color(0xffEFBF00),
                            size: 25,
                          ),
                          hintText: "Email@***.com",
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
                          ))),
                ),

// password

//password input
                Container(
                  margin: const EdgeInsets.all(18.5),
                  child: TextFormField(
                      maxLines: 1,
                      //cursorHeight: 100,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          focusColor: Color(0xffEFBF00),
                          contentPadding: const EdgeInsets.all(8.0),
                          prefixIcon: const Icon(
                            Icons.password_outlined,
                            color: Color(0xffEFBF00),
                            size: 25,
                          ),
                          hintText: "Password***",
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
                          ))),
                ),

                ///Buttons To auth function
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 50,
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
                              ),
                              () {},
                              25),
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
                              ),
                              () {},
                              25),
                        ],
                      ),
                    ),
                    /////social auth button
                    const SizedBox(
                      width: double.infinity,
                      height: 75,
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
                                const Icon(Icons.account_circle_outlined,
                                    size: 40, color: Colors.white),
                                () {},
                                50),
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

                /* Container(
                  margin: const EdgeInsets.all(25.0),
                  child: const Center(
                    child: Text(
                      "Socail Auth",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ),*/
              ]),
        ),
      ),
    );
  }
}
