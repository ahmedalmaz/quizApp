import 'package:complete_flutter_guide/Result.dart';
import 'package:flutter/material.dart';
import 'Quiz.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int totalScore = 0;
  int questionNum = 0;
  void nextQuestion(int score) {
    setState(() {
      questionNum++;
      totalScore += score;
     
    });
  }

  void resetQuiz() {
    setState(() {
      questionNum = 0;
      totalScore = 0;
    });
  }

  List<Map<String, Object>> question = [
    {
      'QuestionText': 'What\'s your fav color',
      'Answers': [
        {'text': 'red', 'score': 8},
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'teal', 'score': 15}
      ],
    },
    {
      'QuestionText': 'What\'s your fav Animal',
      'Answers': [
        {'text': 'rabbit', 'score': 4},
        {'text': 'elephant', 'score': 10},
        {'text': 'monkey', 'score': 7}
      ],
    },
    {
      'QuestionText': 'What\'s your fav champ',
      'Answers': [
        {'text': 'darius', 'score': 20},
        {'text': 'nasus', 'score': 8},
        {'text': 'garen', 'score': 2},
        {'text': 'ahri', 'score': 0},
        {'text': 'shaco', 'score': 8}
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionNum < question.length
            ? Quiz(question, nextQuestion, questionNum)
            : Result(resetQuiz, totalScore),
      ),
    );
  }
}
