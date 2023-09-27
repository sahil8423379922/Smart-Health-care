import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({super.key});

  @override
  State<NavigationDrawerScreen> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
              color: Color.fromARGB(255, 4, 99, 128),
              child: DrawerHeader(child: Image.asset("assets/icon.png"))),
        ),
        SizedBox(
          height: 25,
        ),
        ListTile(
          title: Text(
            "Dashboard",
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(
            Icons.dashboard,
            size: 28,
          ),
        ),
        ListTile(
          title: Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(
            Icons.privacy_tip,
            size: 28,
          ),
        ),
        ListTile(
          title: Text(
            "About Us",
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(
            Icons.policy,
            size: 28,
          ),
        ),
        ListTile(
          title: Text(
            "Rate Us",
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(
            Icons.star,
            size: 28,
          ),
        ),
        ListTile(
          title: Text(
            "Logout",
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(
            Icons.logout,
            size: 28,
          ),
        ),
        ListTile(
          title: Text(
            "Exit",
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(
            Icons.exit_to_app,
            size: 28,
          ),
        ),
      ],
    ));
  }
}
