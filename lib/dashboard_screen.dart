import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String email;

  DashboardScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Selamat Datang, $email!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
