import 'package:flutter/material.dart';
import 'package:bmicalculatorapp/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0D22),
        ),
      ),
      home: InputPage(),
    );
  }
}
