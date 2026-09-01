import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebaseService {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<String> verifyUserPhone(
    String phoneNumber,
  ) async {
    final completer = Completer<String>();

    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          log('Automatic phone verification available');
        },
        verificationFailed: (FirebaseAuthException e) {
          log('Firebase error code: ${e.code}');
          log('Firebase error message: ${e.message}');
          String message;

          switch (e.code) {
            case 'invalid-phone-number':
              message = 'Please enter a valid phone number.';
              break;

            case 'too-many-requests':
              message =
                  'Too many attempts. Please wait a few minutes and try again.';
              break;

            case 'operation-not-allowed':
              message =
                  'Phone sign-in is currently unavailable. Please try again later.';
              break;

            case 'quota-exceeded':
              message = 'SMS limit reached. Please try again later.';
              break;

            case 'billing-not-enabled':
              message = 'Phone verification is temporarily unavailable.';
              break;

            default:
              message =
                  "We couldn’t send the verification code. Please try again.";
          }
          if (!completer.isCompleted) {
            completer.completeError(message);
          }
        },
        codeSent: (String verificationId, int? resendToken) async {
          log('OTP sent');

          if (!completer.isCompleted) {
            completer.complete(verificationId);
          }
        },
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {
          log('Auto retrieval timeout');

          if (!completer.isCompleted) {
            completer.complete(verificationId);
          }
        },
      );
    } catch (e) {
      if (!completer.isCompleted) {
        completer.completeError(e);
      }
    }
    return completer.future;
  }

  Future<UserCredential> signInWithPhoneNumber(
      String verificationId, String smsCode) async {
    log('Signing in with phone number');

    final credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    return await auth.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  bool isLogged() {
    return auth.currentUser != null;
  }
}
