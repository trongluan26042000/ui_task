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
            const SizedBox(height: 50),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                color: Colors.white,
              ),
              height: 350,
              width: 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 50,right: 50),
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        labelText: 'Email',
                        suffixIcon: const Icon(Icons.email,color: Colors.black,),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Enter your email',
                        errorText: _validateEmail(_emailController.text),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _validateEmail(_emailController.text);
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
                    child:Form(
                      key: _formKey,
                      child: TextFormField(
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: _isHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                            onPressed: _toggleVisibility,
                          ),
                        ),
                        // validator: _validatePassword,
                        // onSaved: (String value) {
                        //   _password = value;
                        // },
                      ),
                    // child: TextField(
                    //   controller: _emailController,
                    //   keyboardType: TextInputType.emailAddress,
                    //   decoration: InputDecoration(
                    //     filled: true,
                    //     fillColor: Colors.grey,
                    //     contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    //     labelText: 'Password',
                    //     suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility,color: Colors.black,),),
                    //     border: OutlineInputBorder(
                    //       borderSide: const BorderSide(color: Colors.black),
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //     hintText: 'Enter your password',
                    //     errorText: _validateEmail(_emailController.text),
                    //   ),
                    //   onChanged: (value) {
                    //     setState(() {
                    //       _validateEmail(_emailController.text);
                    //     });
                    //   },
                    // ),
                  ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
TextEditingController _emailController = TextEditingController();

RegExp emailRegExp =
RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

String? _validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email address';
  } else if (!emailRegExp.hasMatch(value)) {
    return 'Please enter a valid email address';
  }
  return null;
}
final _formKey = GlobalKey<FormState>();
bool _isHidden = true;
String _password = '';

void _toggleVisibility() {
  setState(() {
    _isHidden = !_isHidden;
  });
}

void setState(Null Function() param0) {
}
String? _validatePassword(String value) {
  if (value.isEmpty) {
    return 'Password cannot be empty';
  } else if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  } else if (!value.contains(RegExp(r'[A-Z]'))) {
    return 'Password must contain at least one uppercase letter';
  } else if (!value.contains(RegExp(r'[a-z]'))) {
    return 'Password must contain at least one lowercase letter';
  } else if (!value.contains(RegExp(r'[0-9]'))) {
    return 'Password must contain at least one digit';
  }
  return null;
}

