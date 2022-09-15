import 'package:flutter/material.dart';
import 'package:projectb/drawer/Contactus.dart';
import 'package:projectb/FirstPage.dart';
import 'package:projectb/flowe.dart';
import 'package:projectb/drawer/Login.dart';
import 'package:projectb/drawer/About.dart';
import 'package:projectb/pageviewtext.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Grid(),
    );
  }
}
