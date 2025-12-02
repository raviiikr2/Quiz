import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget {
   const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function () onTap;

  @override
  Widget build(BuildContext context) {
    return 
    ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
       padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 10),
        textStyle: TextStyle(fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 90, 20, 147),
        foregroundColor: Color.fromARGB(255, 252, 252, 252),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16)
        )
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
