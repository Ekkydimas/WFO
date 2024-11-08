import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../utils/route_utils.dart';
import 'package:wfo/features/autentikasi/screen/login_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee Attendance',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.accentColor, // Use `secondary` instead of `accentColor`
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor, // Set scaffold background
        fontFamily: 'Roboto', // Customize with your desired font
      ),
      initialRoute: '/',
      onGenerateRoute: RouteUtils.generateRoute,
      home: LoginScreen(), // Default screen is the login screen
    );
  }
}
