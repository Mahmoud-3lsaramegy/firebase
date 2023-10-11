import 'package:firebace/mymatirel/appbar.dart';
import 'package:firebace/mymatirel/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Gellrey extends StatefulWidget {
  const Gellrey({super.key});

  @override
  State<Gellrey> createState() => _GellreyState();
}

class _GellreyState extends State<Gellrey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const InkWell(
              child: Text("NOTER"),
            ),
            SizedBox(
                width: 50, height: 50, child: Image.asset("images/logo0.png"))
          ],
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Center(
              child: IconButton(
                hoverColor: const Color.fromARGB(206, 255, 255, 255),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacementNamed("signin");
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  size: 35,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xffEFBF00),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Dismissible(
                key: Key("$index"),
                child: const ListTile(
                  title: Text("Hi Titel note"),
                  subtitle: Text("tast note no data bacse"),
                  leading: Icon(Icons.title),
                ));
          },
          itemCount: 3,
        ),
      ),
      floatingActionButton: Buttonsaramegy_text(
          const Color(0xffEFBF00),
          75,
          75,
          const Icon(
            Icons.note_add,
            size: 35,
          ), () {
        Navigator.pushNamed(context, "Create_note");
      }, 50),
    );
  }
}
