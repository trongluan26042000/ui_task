import 'package:flutter/material.dart';
import 'package:task_1/login_screen.dart';
import 'package:task_1/register_screen.dart';
import 'package:task_1/signin_signup_screen.dart';
import 'package:task_1/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInUpScreen(),
    );
  }
}
