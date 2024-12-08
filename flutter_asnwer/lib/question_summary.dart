import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.sammaryData, {super.key});
  final List<Map<String, Object>> sammaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: sammaryData.map(
        (val) {
          return Row(
            children: [
              Text(
                ((val['question_index'] as int) + 1).toString(),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      val['question'].toString(),
                    ),
                    Text(
                      val['question_corrent'].toString(),
                    ),
                    Text(
                      val['user_answer'].toString(),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
