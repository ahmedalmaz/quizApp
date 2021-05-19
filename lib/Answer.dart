import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerQue;

  Answer(this.selectHandler ,this.answerQue);

  @override
  Widget build(BuildContext context) {
    return
      RaisedButton(
          color: Colors.teal,
          child: Text(answerQue,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),

          onPressed: selectHandler);
  }
}
