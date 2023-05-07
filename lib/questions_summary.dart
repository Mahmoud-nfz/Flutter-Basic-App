import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    children: [
                      Text(data['question_index'].toString()),
                      Expanded(
                        child: Column(children: [
                          Text(data["question"] as String),
                          Text(data["answer"] as String),
                          Text(data["correct_answer"] as String),
                        ],),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
