import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int index;
  final Function answered;
  @override
  Quiz({
    @required this.questions,
    @required this.index,
    @required this.answered
  });
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'],
        ),
        ...(questions[index]['answerText'] as List<Map<String,Object>>).map((answer){
          return Answer(()=>answered(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
