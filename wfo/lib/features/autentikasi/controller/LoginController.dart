import 'package:flutter/material.dart';

class LoginController {
  void login(String username, String password, BuildContext context) {
    // Basic authentication logic
    if (username == 'user' && password == 'password') {
      Navigator.pushReplacementNamed(context, '/attendance');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  }
}
