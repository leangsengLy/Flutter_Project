import 'package:aba_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ABA Application",
    theme: ThemeData().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 0, 61, 80),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.dark,
      ),
    ),
    home: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    Widget content = const HomeScreen();
    return Container(
      child: content,
    );
  }
}
