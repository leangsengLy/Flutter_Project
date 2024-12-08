import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  void onClickBtnStartQuiz() {
    startQuiz();
  }

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
          Text(
            "Learn Flutter the fun way?",
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: onClickBtnStartQuiz,
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
