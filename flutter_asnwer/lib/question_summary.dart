import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.sammaryData, {super.key});
  final List<Map<String, Object>> sammaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: sammaryData.map(
            (val) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: val['isCorrect'] as bool
                          ? const Color.fromARGB(255, 0, 150, 40)
                          : const Color.fromARGB(255, 255, 14, 14),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ((val['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          val['question'].toString(),
                        ),
                        Text(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 206, 0, 195),
                          ),
                          val['question_corrent'].toString(),
                        ),
                        Text(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 133, 56, 255),
                          ),
                          val['user_answer'].toString(),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
