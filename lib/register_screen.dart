import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_1/login_screen.dart';
class RegisterSCreen extends StatelessWidget {
  const RegisterSCreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellowAccent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back)),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child:SizedBox()),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  height: 700,
                  width: 410,
                  child: Column(
                    children:[
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,left: 300.0),
                            child: Text('Avatar',style: TextStyle(color: Colors.grey,fontSize: 20),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 130),
                              child: SizedBox(
                                height: 50.0,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey,
                                    labelText: 'Phone Number',
                                    suffixIcon: const Icon(
                                      Icons.phone,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    hintText: 'Phone Number',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 40.0,
                              width: 40.0,
                              child: Image.asset('assets/img/pic.png'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30),
                              child: SizedBox(
                                height: 70.0,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey,
                                    labelText: 'Email',
                                    suffixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    hintText: 'Email',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30),
                              child: SizedBox(
                                height: 70.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey,
                                    labelText: 'User Name',
                                    suffixIcon: const Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    hintText: 'User Name',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30),
                              child: SizedBox(
                                height: 70.0,
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey,
                                    labelText: 'Password',
                                    suffixIcon: const Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    hintText: 'Password',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30),
                              child: SizedBox(
                                height: 70.0,
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey,
                                    labelText: 'Confirm password',
                                    suffixIcon: const Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    hintText: 'Confirm password',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                    ),
                      const SizedBox(height: 30.0,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 350,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.yellowAccent,
                                ),
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
