import 'package:flutter/material.dart';


class Question extends StatelessWidget {

  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          color: Colors.teal,
           fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}