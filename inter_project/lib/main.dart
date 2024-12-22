import 'package:flutter/material.dart';
import 'package:inter_project/ui_update_demo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const UiUpdateDemo(),
      ),
    );
  }
}
