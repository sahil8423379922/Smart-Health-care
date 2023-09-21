import 'dart:async';

import 'package:flutter/material.dart';

import 'auth/Login.dart';
import 'auth/Register.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x046380),
      // Customize your splash screen UI here
      body: Container(
        color: Color.fromARGB(255, 4, 99, 128),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/icon.png"),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
                },
                child: SizedBox(
                    width: 200,
                    height: 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        //<-- SEE HERE
                        side: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      color: Color.fromARGB(255, 4, 99, 128),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Register(),
                  ));
                },
                child: SizedBox(
                    width: 200,
                    height: 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        //<-- SEE HERE
                        side: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        "Register",
                        style: TextStyle(color: Colors.black),
                      )),
                    )),
              )

              // You can use any loading indicator
            ],
          ),
        ),
      ),
    );
  }
}
