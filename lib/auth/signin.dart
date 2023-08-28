import 'package:flutter/material.dart';

class sign extends StatelessWidget {
  const sign({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
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
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(20),
                  child: const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
//Email input
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(18.0),
                      filled: true,
                      focusColor: const Color(0xffEFBF00),
                      hoverColor: const Color(0xffEFBF00),
                      fillColor: Color.fromARGB(255, 136, 177, 230),
                      hintText: "Enter Your Email ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xffEFBF00),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                // password
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(20),
                  child: const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
//password input
                Container(
                  margin: const EdgeInsets.all(10.00),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(18.0),
                      focusColor: const Color(0xffEFBF00),
                      hoverColor: const Color(0xffEFBF00),
                      filled: true,
                      fillColor: Color.fromARGB(255, 136, 177, 230),
                      hintText: "Enter Your Password ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xffEFBF00),
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
