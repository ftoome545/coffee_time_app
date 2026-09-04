import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../onboarding_view.dart';
import '../../../auth/presentation/phone_auth_cubit/phone_auth_cubit.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneAuthCubit>();
    return Center(
      child: TextButton(
        onPressed: () {
          cubit.signOutUser();
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => const OnboardingView(),
            ),
            (route) => false,
          );
        },
        child: Text('Sign Out'),
      ),
    );
  }
}
