import'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _questions = [
    {
      'questionText':'What\'s your husband favourite color?',
      'answerText':['Red', 'Blue', 'Yellow', 'Orange'],
    },
    {
      'questionText':'What\'s your husband favourite animal?',
      'answerText':['Tiger', 'Lion', 'Dog', 'Rat'],
    },
    {
      'questionText':'What\'s your husband birth year?',
      'answerText':['1994', '1993', '1995', '1992'],
    },
  ];
  void _answered(){
    setState(() {
      _index = _index + 1;
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
        body: _index < _questions.length ? Column(
          children: [
            Question(
              _questions[_index]['questionText'],
            ),
            ...(_questions[_index]['answerText'] as List<String>).map((answer){
              return Answer(_answered, answer);
            }).toList(),
          ],
        ) : Center(
          child: Text(
            'Ok Question completed',
          ),
        ),
      ),
    );
  }
}
