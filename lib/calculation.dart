import 'package:flutter/material.dart';

class Calculation extends StatelessWidget {
  final double height;
  final int weight;
  double bmi=0;

  Calculation(this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    return Center();
  }

  String getBMI(){
    bmi = weight/((height/100)*(height/100));
    String bmi_str = bmi.round().toString();
    return bmi_str;
  }

  String getResult(){
    if (bmi<19){
      return 'Underweight';
    }
    else if (bmi<25){
      return 'Normal';
    }
    else if (bmi<30){
      return 'Overweight';
    }
    else {
      return 'Obese';
    }
  }

  String getInterpretation(){
    if (bmi<19){
      return 'Your Body Mass Index is lower than it\'s supposed to be.';
    }
    if (18<bmi && bmi<25){
      return 'You Body Mass Index is perfect!';
    }
    else{
      return 'Your Body Mass Index is higher than it\'s supposed to be.';
    }
  }
}