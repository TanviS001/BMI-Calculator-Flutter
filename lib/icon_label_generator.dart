import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconLabelGenerator extends StatelessWidget {
  IconLabelGenerator({required this.gender, required this.iconRequired});

  final String gender;
  final IconData iconRequired;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconRequired,
          size: 40.0,
          color: Colors.white54,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            '$gender',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white54,
            )
        ),
      ],
    );
  }
}