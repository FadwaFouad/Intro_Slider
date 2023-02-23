import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import '../slider/welcome_screen.dart';
import '/slider/data.dart' as data;

class WelcomeSlider extends StatefulWidget {
  const WelcomeSlider({super.key});

  @override
  State<WelcomeSlider> createState() => _WelcomeSliderState();
}

class _WelcomeSliderState extends State<WelcomeSlider> {
  List<ContentConfig> sliderList = [];

  @override
  void initState() {
    super.initState();
    sliderList = data.sliderData;
  }

  void onFinishSlider() {
    log("slider finish");
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow.shade600),
    );
  }

  // ignore: prefer_final_fields
  IndicatorConfig _indicatorConfig = IndicatorConfig(
    colorActiveIndicator: Colors.purple,
    colorIndicator: Colors.purple.shade200,
    sizeIndicator: 30,
    indicatorWidget: Container(
      width: 30,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.purple.shade200,
      ),
    ),
    activeIndicatorWidget: Container(
      width: 30,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.purple,
      ),
    ),
    spaceBetweenIndicator: 5,
    typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
  );

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: sliderList,
      onDonePress: onFinishSlider,
      doneButtonStyle: myButtonStyle(),
      onSkipPress: onFinishSlider,
      skipButtonStyle: myButtonStyle(),
      nextButtonStyle: myButtonStyle(),
      indicatorConfig: _indicatorConfig,
    );
  }
}
