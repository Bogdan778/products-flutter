import 'package:flutter/material.dart';

final passwordFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
  prefixIcon: const Icon(
    Icons.security,
    color: Colors.black,
  ),
  hintText: 'Please enter your password',
);

final emailFieldDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    prefixIcon: const Icon(
      Icons.mail,
      color: Colors.black,
    ),
    hintText: 'Please enter your email');

const textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

const snackBarMessage = SnackBar(
  content: Text('Wrong email or password!'),
);
