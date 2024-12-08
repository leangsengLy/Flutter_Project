import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onClickTheAnswer, {super.key});
  final void Function(String text) onClickTheAnswer;
  final String answerText;
  void clickTheAnswer() {
    print("Clicking");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clickTheAnswer,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundColor: const Color.fromARGB(255, 87, 0, 134),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        answerText,
      ),
    );
  }
}
