import 'package:firebase_connect/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FirebaseSetup());
}

class FirebaseSetup extends StatelessWidget {
  const FirebaseSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WiidgetTree(),
    );
  }
}
