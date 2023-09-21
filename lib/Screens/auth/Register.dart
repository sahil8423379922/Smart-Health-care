import 'package:extra_views/Screens/auth/login.dart';
import 'package:flutter/material.dart';

import '../dashboard.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                "Register with us",
                style: TextStyle(fontSize: 30),
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
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        labelText: "Full Name"),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        labelText: "Age"),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
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
              SizedBox(height: 8.0),
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
                        labelText: "Create Password"),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
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
                        labelText: "Confirm Password"),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  onPressed: _login,
                  child: SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: Center(child: Text("Register"))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  },
                  child: Text("Already Have Account ? Login"))
            ],
          ),
        ),
      ),
    );
  }

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
}
