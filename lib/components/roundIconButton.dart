import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor:Color(0xFF4C4F5E),
    );
  }
}