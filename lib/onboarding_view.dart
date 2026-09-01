import 'package:flutter/material.dart';
import 'features/auth/presentation/view/phone_sign_up_view.dart';
import 'shared/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050505),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              AspectRatio(
                aspectRatio: 375 / 536,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/start_screen_coffee_image.png'))),
                ),
              ),
              // AspectRatio(
              //   aspectRatio: 375 / 536,
              //   child: Container(
              //     decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //             begin: Alignment.topCenter,
              //             end: Alignment.bottomCenter,
              //             colors: [
              //           Colors.transparent,
              //           Color(0xff050505).withOpacity(0.2),
              //           Color(0xff050505),
              //         ])),
              //   ),
              // ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Fall in Love with Coffee in Blissful Delight!',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                    style: TextStyle(
                      color: Color(0xffA2A2A2),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  CustomButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const PhoneSignUpView()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 54,
            ),
          ],
        ),
      ),
    );
  }
}
