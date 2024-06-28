import 'package:dana/shared/theme.dart';
import 'package:dana/ui/widgets/buttons.dart';
import 'package:dana/ui/widgets/gesture_text.dart';
import 'package:dana/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: whiteColor,
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Container(
              width: 155,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img_logo_white.png'),
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 100),
            ),
            Text(
              'Join Us to Unlock\nYour Growth',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: lightBackgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Form(
                child: Column(
                  children: [
                    const CustomTextField(
                        label: 'Full Name', obsecureText: false),
                    const SizedBox(height: 16),
                    const CustomTextField(
                        label: 'Email Address', obsecureText: false),
                    const SizedBox(height: 16),
                    const CustomTextField(
                        label: 'Password', obsecureText: true),
                    const SizedBox(height: 30),
                    const CustomFilledButton(
                      width: double.infinity,
                      height: 50,
                      title: 'Continue',
                    ),
                    const SizedBox(height: 72),
                    CustomGestureText(
                      title: 'Sign In',
                      styleText: greyTextStyle,
                      fontSize: 16,
                      fontWeight: regular,
                      onTap: () => Navigator.pushNamed(context, '/sign-in'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
