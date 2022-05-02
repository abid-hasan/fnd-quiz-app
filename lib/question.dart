import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question(questionText, {Key? key}) : super(key: key);

  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
