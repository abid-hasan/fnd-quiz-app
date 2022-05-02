import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final Map<String, Object> answer;

  const Answer(this.answerQuestion, this.answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        child: Text(answer['text'] as String),
        onPressed: answerQuestion,
      ),
    );
  }
}
