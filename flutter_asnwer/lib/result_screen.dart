import 'package:flutter/material.dart';
import 'package:flutter_asnwer/data/question.dart';
import 'package:flutter_asnwer/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.listSelectedAnswer, {super.key});
  final List<String> listSelectedAnswer;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < listSelectedAnswer.length; i++) {
      summary.add({
        "question_index": i,
        'question': questions[i].text,
        'question_corrent': questions[i].answers[0],
        'user_answer': listSelectedAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer X out of Y questions corrently!',
              style: GoogleFonts.lato(),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummary()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
