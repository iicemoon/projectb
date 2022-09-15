import 'package:flutter/material.dart';
import 'package:projectb/flowe.dart';
import 'package:projectb/drawer/Login.dart';

class Contact extends StatelessWidget {
  const Contact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black54,
        backgroundColor: Color(0xFFF1E8E8),
        centerTitle: true,
        title: (Text("Contact Us")),
      ),
      body: ListView(children: [
        Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("This App is Developed by ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 40,
                        fontWeight: FontWeight.w900)),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(top: 100),
            width: 350,
            decoration: BoxDecoration(
                color: Color.fromARGB(75, 227, 175, 227),
                boxShadow: kElevationToShadow[5],
                borderRadius: BorderRadius.circular(50)),
            alignment: Alignment.center,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                      "Roua Alammash\nMohammed Alrajhi\nRaghad Alshammari\nOlla Talib",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w900)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      "This App is part of Flutter Curse from Tuwaiq Academy.",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w900)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 10),
                  child: Text("Email:   example@exple.com "),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
