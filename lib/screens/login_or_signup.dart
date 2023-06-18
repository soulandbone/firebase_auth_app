import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';

class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({super.key});

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  void switchPage() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLogin
            ? LoginPage(
                onTap: switchPage,
              )
            : SignUpPage(
                onTap: switchPage,
              ));
  }
}
