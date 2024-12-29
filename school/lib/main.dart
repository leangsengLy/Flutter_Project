import 'package:flutter/material.dart';
import 'package:school/Screen/home_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: AppSchool(),
    ),
  );
}

class AppSchool extends StatelessWidget {
  const AppSchool({super.key});
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
