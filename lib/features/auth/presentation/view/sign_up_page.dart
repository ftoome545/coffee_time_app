import 'package:flutter/material.dart';
import '../../../../shared/custom_button.dart';
import '../../../../shared/custom_password_field.dart';
import '../../../../shared/custom_text_form_field.dart';
import '../widgets/already_member_or_create_account.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  static const String screenRoute = '/signUpPage';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String name = '';
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
        title: const Text('Sign Up', style: TextStyle(color: Colors.white)),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User name',
                  style: TextStyle(color: Color(0xffC67C4E), fontSize: 20),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                    onSaved: (value) {
                      name = value!;
                    },
                    hintText: 'user name',
                    keyboardType: TextInputType.name),
                const SizedBox(
                  height: 16,
                ),
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
                  keyboardType: TextInputType.emailAddress,
                ),
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
                CustomPasswordField(
                  onSaved: (value) {
                    password = value!;
                  },
                ),
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
                  title: 'Already Member? ',
                  subTitle: 'Log In',
                  onTap: () {
                    // Navigator.pushNamed(context, LogInPage.screenRoute);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                    ));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                  text: 'Sign Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
