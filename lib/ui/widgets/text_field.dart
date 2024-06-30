import 'package:flutter/material.dart';
import 'package:dana/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool? obsecureText, showCursor;
  final TextEditingController? controller;
  final int? lengthText;
  final double? letterSpacing;
  final TextInputType? keyboardType;
  const CustomTextField(
      {super.key,
      required this.label,
      this.obsecureText,
      this.controller,
      this.lengthText,
      this.letterSpacing,
      this.keyboardType,
      this.showCursor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(fontWeight: medium),
        ),
        const SizedBox(height: 8),
        TextFormField(
          maxLength: lengthText,
          controller: controller,
          obscureText: obsecureText ?? false,
          style: TextStyle(letterSpacing: letterSpacing),
          showCursor: showCursor ?? true,
          keyboardType: keyboardType,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
