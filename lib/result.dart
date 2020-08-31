import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  @override
  Result(this.totalScore);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: totalScore<15 ? Text(
          'Opps You dont really know about your husband',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ): Text(
          'Ok now you can have fun time with your husband',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
