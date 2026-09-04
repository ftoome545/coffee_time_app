import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../data/repos/phone_auth_repo.dart';
import '../phone_auth_cubit/phone_auth_cubit.dart';
import '../widgets/phone_sign_up_consumer.dart';

class PhoneSignUpView extends StatelessWidget {
  const PhoneSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PhoneSignUpConsumer(),
    );
  }
}
