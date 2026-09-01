part of 'phone_auth_cubit.dart';

@immutable
sealed class PhoneAuthState {}

final class PhoneAuthCubitInitial extends PhoneAuthState {}

final class PhoneAuthCubitLoading extends PhoneAuthState {}

final class PhoneAuthCubitCodeSent extends PhoneAuthState {
  final String verificationId;

  PhoneAuthCubitCodeSent({
    required this.verificationId,
  });
}

final class PhoneAuthCubitSuccess extends PhoneAuthState {
  final AuthModel user;

  PhoneAuthCubitSuccess({required this.user});
}

final class PhoneAuthCubitFailure extends PhoneAuthState {
  final String errorMessage;
  PhoneAuthCubitFailure({required this.errorMessage});
}
