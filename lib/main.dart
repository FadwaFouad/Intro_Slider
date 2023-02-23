import '../slider/welcome_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'app',
        theme:
            ThemeData(primarySwatch: Colors.yellow, fontFamily: 'RobotoSlab'),
        home: const Scaffold(
          body: WelcomeSlider(),
        ));
  }
}
