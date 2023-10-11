// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:firebace/auth/signin.dart';
import 'package:firebace/auth/signup.dart';
import 'package:firebace/nota_Pages/Notaa.dart';
import 'package:firebace/nota_Pages/notegellrey.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  //firebace initalize
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  ///// lunch point app
  runApp(const MyApp());
}
bool ustate = false;
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
@override
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        ustate = false;
      } else {
        print('User is signed in!');
        ustate = true;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "signin": (context) => const Sign(),
        "signup": (context) => const createmail(),
        "Create_note": (context) => const note(),
        "Gellrey": (context) => const Gellrey(),
      },
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (ustate == false) {
            return Sign();
          } else {
            return Gellrey();
          }
        },
      ),
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
    );
  }
}

// ignore: non_constant_identifier_names

