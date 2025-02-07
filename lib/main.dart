import 'package:flutter/material.dart';
import 'package:portfolio/pages/main/home.dart';
import 'package:portfolio/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: white,
      home: Home(),
    );
  }
}
