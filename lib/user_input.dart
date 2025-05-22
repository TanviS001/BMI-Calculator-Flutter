import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_label_generator.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'calculation.dart';

Genders? selectedGender;
double height = 180;
int weight = 60;
int ageNumber = 20;

enum Genders {
  female,
  male
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});
  @override
  State<BMICalculator> createState() => BMICalculatorState();
}

class BMICalculatorState extends State<BMICalculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Genders.male;
                      });
                    },
                    color:
                        selectedGender == Genders.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                    cardChild: IconLabelGenerator(
                      gender: 'MALE',
                      iconRequired: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Genders.female;
                      });
                    },
                    color:
                        selectedGender == Genders.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                    cardChild: IconLabelGenerator(
                      gender: 'FEMALE',
                      iconRequired: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Color(0XFF92939C), fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '${height.round().toString()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0,
                        ),
                      ),
                      Text('cm', style: TextStyle(fontSize: 18.0)),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0XFFEB1555),
                      overlayColor: Color(0X29EB1555),
                      activeTrackColor: Color(0XFFFFFFFF),
                      inactiveTrackColor: Color(0XFF8D8E98),
                      overlayShape: RoundSliderThumbShape(
                        enabledThumbRadius: 24.0,
                      ),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 12.0,
                      ),
                    ),
                    child: Slider(
                      value: height,
                      min: 50,
                      max: 300,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Color(0XFF92939C),
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0X2992939C),
                                ),
                                child: Icon(FontAwesomeIcons.minus),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0x2992939C),
                                ),
                                child: Icon(FontAwesomeIcons.plus),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: Color(0XFF92939C),
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          '$ageNumber',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  ageNumber--;
                                });
                              },
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0X2992939C),
                                ),
                                child: Icon(FontAwesomeIcons.minus),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  ageNumber++;
                                });
                              },
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0x2992939C),
                                ),
                                child: Icon(FontAwesomeIcons.plus),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

              Calculation calculation = Calculation(height, weight);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(
                  bmiResult: calculation.getBMI(),
                  textResult: calculation.getResult(),
                  interpretation: calculation.getInterpretation(),
                )),
              );
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 5.0),
              height: kBottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text('CALCULATE', style: TextStyle(fontSize: 18.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
