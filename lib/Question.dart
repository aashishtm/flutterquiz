import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  @override

  Question(this.questionText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
