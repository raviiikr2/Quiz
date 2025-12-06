import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: summaryData.map((data) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8), 
                  decoration: BoxDecoration(
                    color: (data['correct_answer'] == data['user_answer']) 
              ? const Color.fromARGB(255, 132, 213, 158) 
              : const Color.fromARGB(255, 177, 56, 56), 
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    ((data['question-index'] as int) + 1).toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    (data['question'] as String),
                    style: TextStyle(fontSize: 18,
                    color: Colors.white),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),
            Text((data['correct_answer'] as String),
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 248, 129)
            ),
            ),
            SizedBox(height: 3,),
            Text((data['user_answer'] as String),
            style: TextStyle(
              color: (data['correct_answer'] == data['user_answer']) 
              ? const Color.fromARGB(255, 1, 248, 129) 
              : const Color.fromARGB(255, 220, 18, 4)
            ),
            ),
            SizedBox(height: 25,)
          ],
        );
      }).toList(),
    );
  }
}
