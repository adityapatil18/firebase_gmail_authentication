import 'package:firebase_connect/auth.dart';
import 'package:firebase_connect/home_page.dart';
import 'package:firebase_connect/login_page.dart';
import 'package:flutter/material.dart';

class WiidgetTree extends StatefulWidget {
  const WiidgetTree({super.key});

  @override
  State<WiidgetTree> createState() => _WiidgetTreeState();
}

class _WiidgetTreeState extends State<WiidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
