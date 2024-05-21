import 'package:flutter/material.dart';
import 'homepage/starting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const String starting_page = '/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: starting_page,
      routes: {
        starting_page: (context) => StartedPage(),
      },
    );
  }
}