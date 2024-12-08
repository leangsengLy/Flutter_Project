import 'package:flutter/material.dart';
import 'package:flutter_asnwer/answer_button.dart';
import 'package:flutter_asnwer/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            "Answer 1 ",
            (text) {},
          ),
          AnswerButton(
            "Answer 2 ",
            (text) {},
          ),
          AnswerButton(
            "Answer 3 ",
            (text) {},
          ),
        ],
      ),
    );
  }
}
