import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Createmail {
  Createmail({required this.emailAddress, required this.password});
  String emailAddress, password;

  email_auth(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      if (FirebaseAuth.instance.currentUser!.emailVerified == true) {
        Navigator.of(context).pushReplacementNamed("Gellrey");
      } else {
        FirebaseAuth.instance.currentUser!.sendEmailVerification();
        Navigator.of(context).pushReplacementNamed("email_chacker");
      }
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        const supE1 = SnackBar(
          content: Text("The password provided is too weak."),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.grey,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(supE1);
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        const supE2 = SnackBar(
          content: Text("The account already exists for that email."),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.grey,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(supE2);
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
