import 'package:flutter/material.dart';
import 'package:xolera/Screens/Welcome/welcome_screen.dart';
import 'package:xolera/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xolera',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Color(0xFF121212),
      ),
      home: WelcomeScreen(),
    );
  }
}
