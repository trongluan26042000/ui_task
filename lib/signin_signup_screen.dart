import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/login_screen.dart';
import 'package:task_1/register_screen.dart';
class SignInUpScreen extends StatelessWidget {
  const SignInUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.yellowAccent,
        child: Column(
          children: [
            const SizedBox(height: 120.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80),bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)),
                    color: Colors.white60
                  ),
                  height: 220,
                  width: 280,
                  child: const Center(
                    child: Text(
                      'WellCome \nto Flutter',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
                    color: Colors.white60,
                ),
                  height: 280,
                  width: 330,
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LoginScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.yellowAccent
                                ),
                                child: const Text(
                                  'Sign In',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => RegisterSCreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.yellowAccent
                                ),
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
