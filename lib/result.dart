import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandle;
  const Result(this.resultScore, this.resetHandle, {super.key});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = ' You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          TextButton(
              onPressed: resetHandle,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, // Text Color
              ),
              child: const Text(
                'Restart Quiz!',
              )),
        ],
      ),
    );
  }
}
