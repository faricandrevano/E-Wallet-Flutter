import 'package:dana/shared/theme.dart';
import 'package:dana/ui/widgets/buttons.dart';
import 'package:dana/ui/widgets/gesture_text.dart';
import 'package:dana/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: lightBackgroundColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: const EdgeInsets.only(top: 100, bottom: 100),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img_logo_white.png'),
                ),
              ),
            ),
            Text(
              'Sign In &\nGrow Your Finance',
              style:
                  blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Form(
                child: Column(
                  children: [
                    const CustomTextField(
                      label: 'Email Address',
                      obsecureText: false,
                    ),
                    const SizedBox(height: 16),
                    const CustomTextField(
                      label: 'Password',
                      obsecureText: true,
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomGestureText(
                        title: 'Forgot Password?',
                        styleText: blueTextStyle,
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomFilledButton(
                      width: double.infinity,
                      height: 50,
                      title: 'Sign In',
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-up', (route) => false),
                    ),
                    const SizedBox(height: 70),
                    CustomGestureText(
                      title: 'Create New Account',
                      fontSize: 16,
                      fontWeight: regular,
                      styleText: greyTextStyle,
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
