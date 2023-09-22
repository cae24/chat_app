import 'package:flutter/material.dart';

import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  void signUp() {}

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
                  "Let's create an account for you!",
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
                const SizedBox(height: 10),
                MyTextField(
                  controller: _confirmPassword,
                  hintText: 'Confirm password',
                  osbcureText: true,
                ),
                const SizedBox(height: 25),
                MyButton(onTap: signUp, text: 'Sign Up'),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member?'),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
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
