import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunc;
  final String answerText;

  Answer(this.answerFunc, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: answerFunc,
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
