import 'package:bloc/bloc.dart';
import 'package:coffee_time/features/auth/data/model/auth_model.dart';

import 'package:meta/meta.dart';

import '../../../../core/errors/custom_exception.dart';
import '../../data/repos/phone_auth_repo.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  final PhoneAuthRepo phoneAuthRepo;
  PhoneAuthCubit({required this.phoneAuthRepo})
      : super(PhoneAuthCubitInitial());

  Future<void> verifyPhone(String phoneNumber) async {
    emit(PhoneAuthCubitLoading());
    final result = await phoneAuthRepo.verifyPhone(phoneNumber);
    result.fold(
      (failure) => emit(PhoneAuthCubitFailure(errorMessage: failure.message)),
      (verificationId) =>
          emit(PhoneAuthCubitCodeSent(verificationId: verificationId)),
    );
  }

  Future<void> signInWithPhoneNumber(
      String verificationId, String smsCode) async {
    emit(PhoneAuthCubitLoading());
    final result =
        await phoneAuthRepo.signInWithPhoneNumber(verificationId, smsCode);
    result.fold(
      (failure) => emit(PhoneAuthCubitFailure(errorMessage: failure.message)),
      (user) => emit(PhoneAuthCubitSuccess(user: user)),
    );
  }

  Future<bool> checkLoginStatus() async {
    return await phoneAuthRepo.isLoggedIn();
  }

  Future<void> signOutUser() async {
    try {
      await phoneAuthRepo.signOut();
    } catch (e) {
      throw CustomException(message: 'Something went wrong');
    }
  }
}
