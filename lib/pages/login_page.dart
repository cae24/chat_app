import 'package:flutter/material.dart';

import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Icon(
                  Icons.message,
                  size: 100,
                ),
                const SizedBox(height: 50),
                const Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: _email,
                  hintText: 'Email',
                  osbcureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: _password,
                  hintText: 'Password',
                  osbcureText: true,
                ),
                const SizedBox(height: 25),
                MyButton(onTap: signIn, text: 'Sign In'),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
