import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Row(
              children: [
               Text(((item['question_index'] as int) + 1).toString(),style:const TextStyle(backgroundColor:Colors.purple)),
               const SizedBox(width:20),
                Expanded(
                  child: Column(
                    children: [
                      Text(item['question'] as String,textAlign:TextAlign.left),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(item['user_answer'] as String,textAlign:TextAlign.justify),
                      Text(
                        item['correct_answer'] as String,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
