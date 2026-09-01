import 'package:coffee_time/features/auth/presentation/widgets/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../navigator_screen.dart';
import '../phone_auth_cubit/phone_auth_cubit.dart';
import 'phone_sign_up_view_body.dart';

class PhoneSignUpConsumer extends StatelessWidget {
  const PhoneSignUpConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PhoneAuthCubit, PhoneAuthState>(
      listener: (context, state) {
        if (state is PhoneAuthCubitCodeSent) {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return BlocProvider.value(
              value: context.read<PhoneAuthCubit>(),
              child: VerificationCode(
                verificationId: state.verificationId,
              ),
            );
          }));
        } else if (state is PhoneAuthCubitFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        } else if (state is PhoneAuthCubitSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Operation successful!'),
            ),
          );
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
            return const NavigatorScreen();
          }));
        }
      },
      child: PhoneSignUpViewBody(),
    );
  }
}
