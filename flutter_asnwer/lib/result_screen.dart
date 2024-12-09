import 'package:flutter/material.dart';
import 'package:flutter_asnwer/data/question.dart';
import 'package:flutter_asnwer/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.listSelectedAnswer, this.restartGame, {super.key});
  final List<String> listSelectedAnswer;
  final void Function() restartGame;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < listSelectedAnswer.length; i++) {
      summary.add({
        "question_index": i,
        'question': questions[i].text,
        'question_corrent': questions[i].answers[0],
        'user_answer': listSelectedAnswer[i],
        'isCorrect': listSelectedAnswer[i] == questions[i].answers[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['question_corrent'] == data['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $numCorrectQuestion out of $numTotalQuestion questions corrently!',
              style: GoogleFonts.lato(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummary()),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 100,
              child: TextButton(
                onPressed: () {
                  restartGame();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Restart Quiz!',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
