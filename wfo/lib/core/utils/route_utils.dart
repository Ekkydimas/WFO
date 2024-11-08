import 'package:flutter/material.dart';

class RouteUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => PlaceholderScreen(title: 'Login Screen Placeholder'));
      case '/attendance':
        return MaterialPageRoute(builder: (_) => PlaceholderScreen(title: 'Attendance Screen Placeholder'));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('This is a placeholder for $title')),
    );
  }
}
