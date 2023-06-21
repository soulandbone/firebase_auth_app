import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/my_button.dart';
import '../widgets/my_text_field.dart';
import '../widgets/square_tile.dart';

class LoginPage extends StatefulWidget {
  // check what happens with the signUserIn function if I transform this into a StatefulWidget as MitchKoko does in his video. Because Right now I get this under curve line that says dont use BuildContext over async gaps.
  Function()? onTap;

  LoginPage({required this.onTap, super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(title: Text(message));
        });
  }

  void signUserIn() async {
    final navigator = Navigator.of(context);
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      navigator.pop();
    } on FirebaseAuthException catch (e) {
      // to avoid AsyncGaps issues
      navigator.pop();
      showErrorMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const Gap(45),
              Text(
                'Welcome back, you\'ve been missed!',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const Gap(25),
              MyTextField(
                  hintText: 'Email',
                  controller: emailController,
                  obscuredText: false),
              const Gap(10),
              MyTextField(
                  hintText: 'Password',
                  controller: passwordController,
                  obscuredText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      )),
                ],
              ),
              const Gap(20),
              MyButton(
                onTap: () => signUserIn(),
                text: 'Login',
              ),
              const Gap(20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('or Continue with'),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                    ),
                  ),
                ],
              ),
              const Gap(30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/images/google_icon.png'),
                  Gap(20),
                  SquareTile(imagePath: 'assets/images/apple_icon.png'),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member?'),
                  const Gap(8),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
