import 'package:coffee_time/core/services/shared_preferences_service.dart';
import 'package:coffee_time/decision_screen.dart';
import 'package:coffee_time/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/services/get_it_service.dart';
import 'features/auth/data/repos/phone_auth_repo.dart';
import 'features/auth/presentation/phone_auth_cubit/phone_auth_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPreferencesService.init();
  setupGetIt();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (_) => PhoneAuthCubit(phoneAuthRepo: getIt<PhoneAuthRepo>())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sora',
        primaryColor: const Color(0xffC67C4E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffC67C4E),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: DecisionScreen(),
    );
  }
}
