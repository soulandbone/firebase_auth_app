import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/my_button.dart';
import '../widgets/my_text_field.dart';
import '../widgets/square_tile.dart';

class SignUpPage extends StatelessWidget {
  Function()? onTap;
  SignUpPage({required this.onTap, super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void signUserUp() {}

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
              const Gap(65),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const Gap(45),
              Text(
                'Relax, we will help make an account for you',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const Gap(25),
              MyTextField(
                  hintText: 'Username',
                  controller: usernameController,
                  obscuredText: false),
              const Gap(10),
              MyTextField(
                  hintText: 'Password',
                  controller: passwordController,
                  obscuredText: true),
              const Gap(10),
              MyTextField(
                  hintText: 'Confirm your password',
                  controller: confirmPasswordController,
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
                onTap: signUserUp,
                text: 'Sign up',
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
                  const Text('Already have an account?'),
                  const Gap(8),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      'Login Now!',
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
