import 'package:coffee_time/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:coffee_time/core/services/get_it_service.dart';
import 'package:coffee_time/features/auth/data/repos/phone_auth_repo.dart';
import 'package:coffee_time/navigator_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth/presentation/phone_auth_cubit/phone_auth_cubit.dart';

class DecisionScreen extends StatefulWidget {
  const DecisionScreen({super.key});

  @override
  State<DecisionScreen> createState() => _DecisionScreenState();
}

class _DecisionScreenState extends State<DecisionScreen> {
  @override
  void initState() {
    super.initState();

    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    final isLoggedIn = await context.read<PhoneAuthCubit>().checkLoginStatus();

    if (!mounted) return;

    if (isLoggedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const NavigatorScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
