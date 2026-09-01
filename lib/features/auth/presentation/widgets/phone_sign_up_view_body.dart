import 'dart:developer';

import 'package:coffee_time/features/auth/presentation/phone_auth_cubit/phone_auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../shared/custom_button.dart';

class PhoneSignUpViewBody extends StatefulWidget {
  const PhoneSignUpViewBody({super.key});

  @override
  State<PhoneSignUpViewBody> createState() => _PhoneSignUpViewBodyState();
}

class _PhoneSignUpViewBodyState extends State<PhoneSignUpViewBody> {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'SA', dialCode: '+966');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    log(value.phoneNumber.toString());
                    number = value;
                  },
                  initialValue: number,
                  textFieldController: controller,
                  inputDecoration: InputDecoration(labelText: 'Phone Number'),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Sign up/Sign in',
                  onPressed: () {
                    final phoneNumber = number.phoneNumber.toString();
                    context.read<PhoneAuthCubit>().verifyPhone(phoneNumber);
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (context) => const VerificationCode()),
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
