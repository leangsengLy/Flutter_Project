import 'package:flutter/material.dart';
import 'package:flutter_asnwer/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.deepPurple,
            ],
          )),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
