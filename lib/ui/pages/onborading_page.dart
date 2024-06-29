import 'package:carousel_slider/carousel_slider.dart';
import 'package:dana/shared/theme.dart';
import 'package:dana/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  CarouselController controllerCarousel = CarouselController();
  int pageIndex = 0;
  final List<String> titleBoarding = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together'
  ];
  final List<String> contentBoarding = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too'
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageCarousel = [
      Image.asset(
        'assets/img_onboarding1.png',
        height: 331,
      ),
      Image.asset(
        'assets/img_onboarding2.png',
        height: 331,
      ),
      Image.asset(
        'assets/img_onboarding3.png',
        height: 331,
      ),
    ];
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            child: CarouselSlider(
              items: imageCarousel,
              carouselController: controllerCarousel,
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  titleBoarding[pageIndex],
                  textAlign: TextAlign.center,
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 26),
                Text(
                  contentBoarding[pageIndex],
                  textAlign: TextAlign.center,
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                SizedBox(height: pageIndex == 2 ? 38 : 50),
                if (pageIndex != 2)
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              pageIndex == 0 ? blueColor : lightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              pageIndex == 1 ? blueColor : lightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              pageIndex == 2 ? blueColor : lightBackgroundColor,
                        ),
                      ),
                      const Spacer(),
                      CustomFilledButton(
                        width: 150,
                        height: 50,
                        title: 'Continue',
                        onPressed: () {
                          controllerCarousel.nextPage();
                        },
                      ),
                    ],
                  )
                else
                  Column(
                    children: [
                      CustomFilledButton(
                        width: double.infinity,
                        height: 50,
                        title: 'Get Started',
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                      ),
                      const SizedBox(height: 14),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign-in');
                        },
                        child: Text(
                          'Sign In',
                          style: greyTextStyle.copyWith(fontWeight: semiBold),
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
