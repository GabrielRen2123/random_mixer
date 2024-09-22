import 'package:flutter/material.dart';

class Custom_Text extends StatelessWidget {
  final String custom_Text, fontFamily;
  final double font_Size;
  final FontWeight fontWeight;
  final Color color; 

  const Custom_Text({super.key, required this.custom_Text, required this.font_Size,  required this.fontWeight,  required this.fontFamily, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
          custom_Text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: color,
            fontSize: font_Size,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
          ),
        );
  }
}

