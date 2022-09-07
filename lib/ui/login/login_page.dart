import 'package:flutter/material.dart';

import '../../constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              'Email',
              style: textStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: emailFieldDecoration,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Password',
              style: textStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: passwordFieldDecoration,
            ),
            const SizedBox(
              height: 170,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign In'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
