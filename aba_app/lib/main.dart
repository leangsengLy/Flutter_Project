import 'package:aba_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ABA Application",
    theme: ThemeData().copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.dark,
      ),
    ),
    home: const App(),
  ));
}

// start build this ui model from 15-1-2025 -> 15-02-2025 (End project)
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    Widget content = const HomeScreen();
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 61, 80),
          Color.fromARGB(255, 0, 61, 80),
        ]),
      ),
      child: content,
    );
  }
}
