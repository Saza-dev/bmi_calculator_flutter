import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {

  IconContent({required this.gender, required this.icon});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: labelTextStyle,
        )
      ],
    );
  }
}