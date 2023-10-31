import 'package:flutter/material.dart';
import 'package:test_application/bmi_calculator/bmi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Agbalumo',
      ),
      home: BmiScreen(),
    );
  }
}

