import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../../shared/custom_button.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: const Color(0xffC67C4E),
      //   title: const Text(
      //     'Verify Your Phone Number',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                const Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2F2D2C),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  textAlign: TextAlign.center,
                  'Enter the OTP sent to your phone number to verify your account.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff9B9B9B),
                  ),
                ),
                const SizedBox(height: 24),
                textCode(),
                const SizedBox(height: 40),
                CustomButton(
                  text: 'Verify & Proceed',
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
    );
  }

  Widget textCode() {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF6D2BB)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Colors.orange[50],
      border: Border.all(color: const Color(0xffC67C4E)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Colors.orange[50],
    );
    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: 6,
      onChanged: (value) {
        // setState(() {
        //   code = value;
        // });
      },
      onCompleted: (value) {
        // Handle OTP input completion
      },
      onSubmitted: (value) {
        // Handle OTP input submission
      },
    );
  }
}
