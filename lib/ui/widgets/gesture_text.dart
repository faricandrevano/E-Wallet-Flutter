import 'package:flutter/material.dart';

class CustomGestureText extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final TextStyle styleText;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomGestureText(
      {super.key,
      this.onTap,
      required this.title,
      required this.styleText,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: styleText.copyWith(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
