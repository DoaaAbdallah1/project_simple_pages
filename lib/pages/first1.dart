import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class First extends StatelessWidget {
  First({super.key});
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String? validateEmail(String? value) {
      const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
      final regex = RegExp(pattern);
      if (value == null || value.isEmpty) {
        return 'Please enter email';
      }
      return value!.isNotEmpty && !regex.hasMatch(value)
          ? 'Enter a valid email address'
          : null;
    }

    String? isPasswordValid(String? inputpassword) {
      if (inputpassword == null || inputpassword.isEmpty) {
        return 'Please enter Password';
      }
      if (!(inputpassword!.length >= 6)) {
        return 'Enter a valid Password';
      }
    }

    ;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _keyForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 185,
              ),
              Center(
                child: Container(
                  width: 207,
                  height: 135,
                  child: Image.asset(
                    "assets/img/m2.png",
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 46, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 28.4,
                        ),
                        Text("Login",
                            style: TextStyle(
                                fontSize: 33, fontWeight: FontWeight.bold)),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 60,
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                
                                  validator: validateEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    
                                      enabledBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.black, width: 1.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.black, width: 1.2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red, width: 1.2),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red, width: 1.2),
      ),
                                      contentPadding:
                                          EdgeInsets.fromLTRB(12, 0, 0, 8)),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 60,
                                
                                  
                                child: TextFormField(
                                  validator: isPasswordValid,
                                  obscureText: true,
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                          
                                    
                                      enabledBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.black, width: 1.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.black, width: 1.2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red, width: 1.2),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red, width: 1.2),
      ),
                                      contentPadding:
                                          EdgeInsets.fromLTRB(12, 0, 0, 8)),
                                ),
                                ),
                              
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Forget Password?",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ))
                                  ]),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (_keyForm.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/end');
                                }
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 19),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.fromLTRB(30, 8, 30, 8)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "New Here?",
                              style: TextStyle(
                                  fontSize: 17.5, fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/register');
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.fromLTRB(6, 0, 0, 0))),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  width: double.infinity,
                  height: 476,
                  decoration: BoxDecoration(
                      color: Color(0xffffb900),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
