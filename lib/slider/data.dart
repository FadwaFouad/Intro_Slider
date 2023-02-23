// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

String screenTitle = "Find your \nPerfect Therapist \nOnline";
String screenDes = "At the heart of our business is a deep "
    "rooted devotion to providing care and warmth for women";

Color sliderColor = Colors.teal.shade600;
List<ContentConfig> sliderData = [
  ContentConfig(
    widgetTitle: Image.asset("assets/images/logo.jpg"),
    description: "Find Services Providers Closet to You",
    styleDescription: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
    centerWidget: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/images/map.jpg",
          fit: BoxFit.cover,
          height: 350,
        ),
      ),
    ),
  ),
  ContentConfig(
    widgetTitle: Image.asset("assets/images/logo.jpg"),
    description: "Book The Service of Qualified Artisans",
    styleDescription: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
    centerWidget: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/images/artisan.jpg",
          fit: BoxFit.cover,
          height: 350,
        ),
      ),
    ),
    // pathImage: "assets/images/artisan.jpg",
  ),
];
