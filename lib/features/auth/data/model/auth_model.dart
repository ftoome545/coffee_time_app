import 'package:firebase_auth/firebase_auth.dart';

class AuthModel {
  final String phoneNumber;
  final String? uid;

  AuthModel({required this.phoneNumber, this.uid});

  factory AuthModel.fromFirebaseUser(User user) {
    return AuthModel(
      phoneNumber: user.phoneNumber ?? '',
      uid: user.uid,
    );
  }
}
