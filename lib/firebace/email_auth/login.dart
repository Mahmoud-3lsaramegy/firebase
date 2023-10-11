// ignore_for_file: camel_case_types
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_email {
  Login_email({required this.emailAddressL, required this.passwordL});
  String emailAddressL, passwordL;

  auth_opation(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddressL,
        password: passwordL,
      );
      Navigator.of(context).pushReplacementNamed("Gellrey");
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        const loginE1 = SnackBar(
          content: Text("No user found for that email."),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.grey,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(loginE1);
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        const loginE2 = SnackBar(
          content: Text("Wrong password provided for that user."),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.grey,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(loginE2);
        print('Wrong password provided for that user.');
      }
    }
  }
}
