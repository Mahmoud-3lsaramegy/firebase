import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void edit_password(context, passemail) async {
  if (passemail == "") {
    const supE1 = SnackBar(
      content: Text("NO Email Write. -->"),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.grey,
      margin: EdgeInsets.all(5),
      dismissDirection: DismissDirection.endToStart,
    );
    ScaffoldMessenger.of(context).showSnackBar(supE1);
  }
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: passemail);
    const supE1 = SnackBar(
      content: Text("Go to email to contine -->"),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.grey,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(supE1);
  } catch (e) {
    print(e);
    const supE1 = SnackBar(
      content: Text("maybe email wrong write ...?"),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.grey,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(supE1);
  }
}
