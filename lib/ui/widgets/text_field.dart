import 'package:flutter/material.dart';
import 'package:dana/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obsecureText;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key,
      required this.label,
      required this.obsecureText,
      this.controller});

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
          controller: controller,
          obscureText: obsecureText,
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
