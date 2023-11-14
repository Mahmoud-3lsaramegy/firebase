import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signInWithGoogle(context) async {
  // Trigger the authentication flow
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    Navigator.restorablePushReplacementNamed(context, "Gellrey");

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on GoogleAuthCredential catch (e) {
    print(e);
    const supE1 = SnackBar(
      content: Text("Felid login try agine .!."),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.grey,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(supE1);
    return await FirebaseAuth.instance.signInWithCredential(e);
  }
}
