import 'package:flutter/material.dart';
import '../slider/data.dart' as data;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Login screen",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
