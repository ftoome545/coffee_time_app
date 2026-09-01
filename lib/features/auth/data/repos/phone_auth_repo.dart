import 'package:coffee_time/core/errors/failures.dart';
import 'package:coffee_time/features/auth/data/model/auth_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/custom_exception.dart';
import '../../../../core/services/auth_firebase_service.dart';

class PhoneAuthRepo {
  final AuthFirebaseService service;
  PhoneAuthRepo({required this.service});

  Future<Either<Failures, String>> verifyPhone(String phoneNumber) async {
    try {
      final verificationId = await service.verifyUserPhone(phoneNumber);
      return Right(verificationId);
    } catch (e) {
      return Left(ServerFailure('Failed to verify phone number: $e'));
    }
  }

  Future<Either<Failures, AuthModel>> signInWithPhoneNumber(
      String verificationId, String smsCode) async {
    try {
      final userCredential =
          await service.signInWithPhoneNumber(verificationId, smsCode);
      final user = userCredential.user;

      if (user == null) {
        return Left(
          ServerFailure('User authentication failed.'),
        );
      }

      final authModel = AuthModel.fromFirebaseUser(user);

      return Right(authModel);
    } catch (e) {
      return Left(ServerFailure('Failed to sign in with phone number: $e'));
    }
  }

  Future<void> signOut() async {
    try {
      await service.signOut();
    } catch (e) {
      throw CustomException(message: 'Failed to sign out: $e');
    }
  }
}
