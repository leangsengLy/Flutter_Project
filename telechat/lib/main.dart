import 'package:flutter/material.dart';
import 'package:telechat/Screen/loginscreen.dart';

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 61, 135),
          brightness: Brightness.dark,
        ),
      ),
      home: const Scaffold(
        body: LoginScreen(),
      ),
    ),
  );
}
