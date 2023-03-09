import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(80)
          ),
          height: 220,
          width: 280,
          child: const Center(
            child: Text(
              'WellCome \nto Flutter',
              textDirection:TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
