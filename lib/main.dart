import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_input.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0XFF0A0E21),
      scaffoldBackgroundColor: Color(0XFF0A0E21),
    ),
    home: BMICalculator(),
  ));
}
