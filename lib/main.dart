import 'package:flutter/material.dart';
import 'package:task_1/LoginScreen.dart';
import 'package:task_1/SignInUpScreen.dart';
import 'package:task_1/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
