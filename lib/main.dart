import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kbackgroundColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: kbackgroundColor,
              surfaceTintColor: kbackgroundColor)),
      home: const WelcomeScreen(),
    );
  }
}
