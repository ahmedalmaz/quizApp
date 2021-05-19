import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';
class Quiz extends StatelessWidget {
  List<Map<dynamic,dynamic>> question;
  Function nextQuestion;
  int questionNum;
  Quiz(this.question,this.nextQuestion,this.questionNum);
  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Question(
              question[questionNum]['QuestionText'],
            ),
          ),
        ),
        ...(question[questionNum]['Answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(() =>nextQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
