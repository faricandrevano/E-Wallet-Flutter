import 'package:flutter/material.dart';
import 'package:dana/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width, height;
  final VoidCallback? onPressed;
  const CustomFilledButton(
      {super.key,
      required this.width,
      required this.height,
      this.onPressed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
