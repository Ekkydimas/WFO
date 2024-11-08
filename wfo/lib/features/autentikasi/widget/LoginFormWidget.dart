import 'package:flutter/material.dart';
import '../controller/LoginController.dart';

class LoginFormWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: usernameController,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            loginController.login(
              usernameController.text,
              passwordController.text,
              context,
            );
          },
          child: Text("LOGIN"),
        ),
      ],
    );
  }
}
