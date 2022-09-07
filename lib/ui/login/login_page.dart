import 'package:flutter/material.dart';
import 'package:products_test_flutter/ui/product/product_screen.dart';
import 'package:products_test_flutter/utils/snackbar.dart';

import '../../constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    void _auth() {
      final email = emailController.text;
      final password = passwordController.text;
      if (email == 'fflabel@ff.f' && password == 'fflabel') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ProductPage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
      }
    }

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
              controller: emailController,
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
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 170,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: ElevatedButton(
                onPressed: _auth,
                child: const Text('Sign In'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
