import 'package:flutter/material.dart';

import '../dashboard.dart';
import 'Register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Dashboard(),
    ));

    // Add your login logic here, e.g., validate email and password, and authenticate the user.

    // For now, we'll just print the entered email and password.
    print("Email: $email");
    print("Password: $password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 80,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        border: InputBorder.none,
                        labelText: "Mobile Number"),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        labelText: "Password"),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password ?")),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  onPressed: _login,
                  child: SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: Center(child: Text("Login"))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Register(),
                    ));
                  },
                  child: Text("Don't Have Account ? Register"))
            ],
          ),
        ),
      ),
    );
  }
}
