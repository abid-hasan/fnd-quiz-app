import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resultScore, this.resetQuiz, {Key? key}) : super(key: key);

  String get resultText {
    return resultScore == 300
        ? "Congratulations! \nYou've passed."
        : "Sorry! \nYou've failed.";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Text(
            resultText,
            style: const TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.teal),
          ),
          onPressed: resetQuiz,
          child: const Text('Retake'),
        )
      ],
    );
  }
}
