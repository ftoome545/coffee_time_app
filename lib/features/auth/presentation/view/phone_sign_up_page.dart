import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:coffee_time/shared/custom_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../widgets/verification_code.dart';

class PhoneSignUpPage extends StatefulWidget {
  const PhoneSignUpPage({super.key});

  @override
  State<PhoneSignUpPage> createState() => _PhoneSignUpPageState();
}

class _PhoneSignUpPageState extends State<PhoneSignUpPage> {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'SA', dialCode: '+966');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: const Color(0xffC67C4E),
      //   title: const Text(
      //     'Sign Up/In with Phone',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    textAlign: TextAlign.center,
                    'Enter your phone number',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2F2D2C),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    textAlign: TextAlign.center,
                    'Enter your mobile number to create or sign in to your account.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff9B9B9B),
                    ),
                  ),
                  const SizedBox(height: 24),
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber value) {
                      log(value.phoneNumber.toString()); // Handle number change
                    },
                    initialValue: number,
                    textFieldController: controller,
                    inputDecoration: InputDecoration(labelText: 'Phone Number'),
                  ),
                  const SizedBox(height: 24),
                  CustomButton(
                    text: 'Sign up/Sign in',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const VerificationCode()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
