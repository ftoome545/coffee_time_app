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

  factory AuthModel.fromModel(AuthModel model) {
    return AuthModel(
      phoneNumber: model.phoneNumber,
      uid: model.uid,
    );
  }

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      phoneNumber: json['phoneNumber'] ?? '',
      uid: json['uid'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
      'uid': uid,
    };
  }
}
