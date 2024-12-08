import 'package:flutter/material.dart';
import 'package:flutter_asnwer/data/question.dart';
import 'package:flutter_asnwer/question_screen.dart';
import 'package:flutter_asnwer/result_screen.dart';
import 'package:flutter_asnwer/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> chooseAnswer = [];
  String? renderActive;
  @override
  void initState() {
    renderActive = 'start-screen';
    super.initState();
  }

  void onSelectTheAnswer(String answer) {
    chooseAnswer.add(answer);
    if (chooseAnswer.length == questions.length) {
      setState(() {
        renderActive = 'result_screen';
      });
    }
  }

  void switchContent() {
    setState(() {
      renderActive = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget contentRender = StartScreen(switchContent);
    if (renderActive != 'start-screen') {
      contentRender = QuestionScreen(onSelectTheAnswer);
    }
    if (renderActive == 'result_screen') {
      contentRender = ResultScreen(chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.deepPurple,
            ],
          )),
          child: contentRender,
        ),
      ),
    );
  }
}
