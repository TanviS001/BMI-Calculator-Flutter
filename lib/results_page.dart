import 'package:bmi_calculator/user_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'user_input.dart';
import 'calculation.dart';

class ResultPage extends StatefulWidget {
  ResultPage({required this.bmiResult, required this.textResult, required this.interpretation});

  final String bmiResult;
  final String textResult;
  final String interpretation;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0E21),
          scaffoldBackgroundColor: Color(0XFF0A0E21),
        ),
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text(
        'Your Result',
          style: TextStyle(
           fontSize: 20.0,
           fontWeight: FontWeight.bold,
          )
        ),
      ),
        body: Column(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0XFF1D1E33),
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          '${widget.textResult}',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0
                          ),
                      ),
                      Text(
                        '${widget.bmiResult}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80.0,
                          ),
                      ),
                      Text(
                        '${widget.interpretation}',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                      ),
                    ]
                  ),
                ),
              )
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (Context) => BMICalculator()));
            },
            child: Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                height: kBottomContainerHeight,
                width: double.infinity,
                child: Center(
                  child: Text(
                      'RE-CALCULATE',
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                  ),
                )
            ),
          ),
        ]
      ),
      ),
    );
  }
}
