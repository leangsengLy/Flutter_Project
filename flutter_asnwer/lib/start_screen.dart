import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              height: 300,
            ),
          ),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the fun way?",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(4),
              ),
              icon: const Icon(Icons.arrow_circle_right_outlined),
              label: const Text(
                "Start Game with me!",
                style: TextStyle(
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }
}
