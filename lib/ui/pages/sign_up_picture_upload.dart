import 'package:dana/shared/theme.dart';
import 'package:dana/ui/widgets/buttons.dart';
import 'package:dana/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignUpPictureUpload extends StatelessWidget {
  const SignUpPictureUpload({super.key});

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
              'Join Us to Unlock\nYour Growth',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       image: AssetImage('assets/img_tips1.png'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
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
                        height: 32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Faric Andrevano',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    label: 'Set PIN (6 digit number)',
                    obsecureText: true,
                  ),
                  const SizedBox(height: 30),
                  CustomFilledButton(
                    width: double.infinity,
                    height: 50,
                    title: 'Continue',
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
