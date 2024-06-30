import 'package:dana/ui/pages/onborading_page.dart';
import 'package:dana/ui/pages/sign_in_page.dart';
import 'package:dana/ui/pages/sign_up_ktp_upload.dart';
import 'package:dana/ui/pages/sign_up_page.dart';
import 'package:dana/ui/pages/sign_up_picture_upload.dart';
import 'package:dana/ui/pages/sign_up_success_page.dart';
import 'package:dana/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignIn(),
        '/sign-up': (context) => const SignUp(),
        '/sign-up/upload-pic': (context) => const SignUpPictureUpload(),
        '/sign-up/upload-ktp': (context) => const SignUpKtpUpload(),
        '/sign-up/success': (context) => const SignUpSuccesPage()
      },
    );
  }
}
