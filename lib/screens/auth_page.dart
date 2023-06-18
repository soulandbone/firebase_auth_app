import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/screens/home_page.dart';
import 'package:firebase_auth_app/screens/login_or_signup.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          if (snapshot.hasData && snapshot.data != null) {
            //user is authenticated
            return const HomePage();
          } else {
            //user is not authenticated
            return const LoginOrSignUp();
          }
        }
      }),
    );
  }
}
