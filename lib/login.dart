import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/painting/borders.dart';
import 'signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: IconButton(
            onPressed: () {
              Future.delayed(Duration(seconds: 0)).then(
                (value) =>
                    Navigator.of(context).popUntil((route) => route.isFirst),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff02004E),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 20),
                  child: Text(
                    'Welcome !',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Montserratmedium',
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF030548),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff9391C7),
                      fontFamily: 'Montserratmedium',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 70.0),
                        Container(
                          width: 300.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                            ),
                            style: TextStyle(
                              fontSize: 20.0,
                              height: 2.0,
                              color: Color(0xFF030548),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 60.0),
                        Container(
                          width: 300.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                            ),
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 20.0,
                              height: 2.0,
                              color: Color(0xFF030548),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80.0),
                Center(
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.indigo.shade900,
                        minimumSize: Size(250, 40),
                        padding: EdgeInsets.all(20.0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        alignment: Alignment.center,
                      ),
                      onPressed: () {},
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                          fontFamily: 'SchylerMontserrat',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF030548),
                      fontFamily: 'Montserratmedium',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Center(
                  child: Container(
                    child: Row(children: const [
                      SizedBox(width: 40),
                      Expanded(child: Divider(color: Colors.black)),
                      SizedBox(width: 20),
                      Text(
                        'or',
                        style: TextStyle(
                            color: Color(0xff02004E),
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(width: 20),
                      Expanded(child: Divider(color: Colors.black)),
                      SizedBox(width: 40),
                    ]),
                  ),
                ),
                SizedBox(height: 40.0),
                Center(
                  child: Text(
                    'Social Media Login',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff9391C7),
                      fontFamily: 'Montserratmedium',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 50.0),
                      Image.asset(
                        'images/google.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      Image.asset(
                        'images/facebook.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      Image.asset(
                        'images/apple.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      SizedBox(width: 50.0),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Container(
                      child: Row(
                    children: [
                      Center(
                        child: Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff9391C7),
                            fontFamily: 'Montserratmedium',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          minimumSize: Size(10, 5),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Future.delayed(Duration(seconds: 0)).then(
                            (value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Montserratmedium',
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF030548),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
