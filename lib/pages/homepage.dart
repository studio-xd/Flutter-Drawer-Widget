// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Center(child: Text('Home')),
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.home,
                size: 48,
                color: Colors.deepPurple[400],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.deepPurple[400],
              ),
              title: Text('2nd screen'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'secondpage');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.deepPurple[400],
              ),
              title: Text('Payment'),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.deepPurple[400],
              ),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}