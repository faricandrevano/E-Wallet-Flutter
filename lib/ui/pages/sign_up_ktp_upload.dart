import 'package:dana/shared/theme.dart';
import 'package:dana/ui/widgets/buttons.dart';
import 'package:dana/ui/widgets/gesture_text.dart';
import 'package:flutter/material.dart';

class SignUpKtpUpload extends StatelessWidget {
  const SignUpKtpUpload({super.key});

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
              'Verify Your\nAccount',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: profileImport,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_export.png',
                        width: 32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Passport/ID Card',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 50),
                  CustomFilledButton(
                    width: double.infinity,
                    height: 50,
                    title: 'Continue',
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 60),
            Align(
              child: CustomGestureText(
                title: 'Skip for Now',
                styleText: greyTextStyle,
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
