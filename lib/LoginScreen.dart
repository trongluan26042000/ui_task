import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellowAccent,
      body: Container(
        color: Colors.yellowAccent,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed:() {}, icon: const Icon(Icons.arrow_back)),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Register',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight:FontWeight.bold),)
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
