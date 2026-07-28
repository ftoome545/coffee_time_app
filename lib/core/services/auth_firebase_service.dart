import 'package:coffee_time/core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebaseService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signInWithPhone(
    String phoneNumber,
  ) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // ANDROID ONLY!

        // Sign the user in (or link) with the auto-generated credential
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          throw CustomException(
              message: 'The provided phone number is not valid.');
        } else if (e.code == 'too-many-requests') {
          throw CustomException(
              message: 'Too many requests. Please try again later.');
        } else {
          throw CustomException(
              message: 'Phone number verification failed. Please try again.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Update the UI - wait for the user to enter the SMS code
        String smsCode = 'xxxx';

        // Create a PhoneAuthCredential with the code
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        await auth.signInWithCredential(credential);
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-resolution timed out...
      },
    );
  }
}
