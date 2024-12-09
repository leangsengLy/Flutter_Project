import 'package:flutter/material.dart';
import 'package:flutter_asnwer/answer_button.dart';
import 'package:flutter_asnwer/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelectTheAnswer, {super.key});
  final void Function(String answer) onSelectTheAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void selectAnswered(String answer) {
    setState(() {
      // currentQuestionIndex++;
      if (currentQuestionIndex == questions.length - 1) {
        currentQuestionIndex = 0;
      } else {
        currentQuestionIndex++;
      }
      widget.onSelectTheAnswer(answer);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffleAnswers().map((item) {
              return AnswerButton(
                item,
                selectAnswered,
              );
            }),
          ],
        ),
      ),
    );
  }
}
