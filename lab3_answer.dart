import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child :ElevatedButton(
              style: ButtonStyle(
	            backgroundColor : MaterialStateProperty.all(Color.fromARGB(255, 229, 255, 198)),
              foregroundColor : MaterialStateProperty.all(Color.fromARGB(255, 155, 0, 95)),
              ),
              onPressed: selectHandler,
              child: Text(answerText),
            ),
    );
  }
}
