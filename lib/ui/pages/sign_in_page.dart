import 'package:dana/shared/theme.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightBackgroundColor,
            ),
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email : ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                        ),
                      ),
                      TextFormField(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
