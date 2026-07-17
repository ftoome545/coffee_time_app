import 'package:flutter/material.dart';

import '../../../../shared/custom_button.dart';
import '../../../../shared/custom_password_field.dart';
import '../../../../shared/custom_text_form_field.dart';
import '../widgets/already_member_or_create_account.dart';
import 'sign_up_page.dart';

class LogInPage extends StatefulWidget {
  static const String screenRoute = '/logInPage';
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String email = '';
  String password = '';

  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffC67C4E),
        title: const Text('Log In', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: _formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(color: Color(0xffC67C4E), fontSize: 20),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                    onSaved: (value) {
                      email = value!;
                    },
                    hintText: 'user@gmail.com',
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Password',
                  style: TextStyle(color: Color(0xffC67C4E), fontSize: 20),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomPasswordField(onSaved: (value) {
                  password = value!;
                }),
                const SizedBox(
                  height: 12,
                ),
                // Text(
                //   "Invalid email or password",
                //   style: const TextStyle(color: Colors.red, fontSize: 16),
                // ),
                const SizedBox(
                  height: 25,
                ),
                AlreadyMemberOrCreateAccount(
                  title: 'New here? ',
                  subTitle: 'Sign UP',
                  onTap: () {
                    // Navigator.pushNamed(context, SignUpPage.screenRoute);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: 'LogIn',
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
