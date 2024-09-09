import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titel;
  final VoidCallback onPressed;
  final IconData icons;

  const CustomButton({
    Key? key,
    required this.titel,
    required this.onPressed,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        onPressed();
      },
      icon: Icon(icons),
      label: Text(titel),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}
