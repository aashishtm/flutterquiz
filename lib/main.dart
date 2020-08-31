import'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore=0;
  var _questions = [
    {
      'questionText':'What\'s your husband favourite color?',
      'answerText':[{'text':'Red','score':5}, {'text':'Blue','score':10}, {'text':'Yellow','score':0}, {'text':'Orange','score':0}],
    },
    {
      'questionText':'What\'s your husband favourite animal he would love to pet?',
      'answerText':[{'text':'Lion','score':5}, {'text':'Tiger','score':10}, {'text':'Dog','score':0}, {'text':'Elephant','score':0}],
    },
    {
      'questionText':'What\'s your husband birth year?',
      'answerText':[{'text':'1994','score':0}, {'text':'1993','score':10}, {'text':'1995','score':0}, {'text':'1992','score':0}],
    },
  ];
  void _answered( int score){
    setState(() {
      _index = _index + 1;
      _totalScore = _totalScore + score;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Quiz App'
          ),
        ),
        body: _index < _questions.length ?
        Quiz(
          questions: _questions,
          index: _index,
          answered: _answered,
        ) : Result(_totalScore),
      ),
    );
  }
}
