import 'package:coffee_time/core/errors/failures.dart';
import 'package:coffee_time/features/auth/data/model/auth_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/custom_exception.dart';
import '../../../../core/services/auth_firebase_service.dart';
import '../../../../core/services/shared_preferences_service.dart';

class PhoneAuthRepo {
  final AuthFirebaseService service;
  final SharedPreferencesService prefs;
  PhoneAuthRepo({required this.service, required this.prefs});

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
      await prefs.setLoggedIn(true);
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

  Future<bool> isLoggedIn() async {
    return await prefs.isLoggedIn();
  }

  Future<void> signOut() async {
    try {
      await service.signOut();
      await prefs.logout();
    } catch (e) {
      throw CustomException(message: 'Failed to sign out: $e');
    }
  }
}
