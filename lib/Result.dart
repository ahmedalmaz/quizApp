import 'package:complete_flutter_guide/Answer.dart';
import 'package:complete_flutter_guide/Question.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Function reset;
  int total;
  Result(this.reset , this.total);
  @override
  _ResultState createState() => _ResultState(reset,total);
}

class _ResultState extends State<Result> {
  String check(){
    if(total>25){
      return 'U R Legend';
    }else if(total<25 && total>12){
      return 'U R pretty Legend';
    }else{
      return 'U R Noob';
    }
  }
  Function reset;
  int total;

  _ResultState(this.reset,this.total);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Question(check()),
        ),
        Answer(reset, 'Reset Quiz')
      ],
    );
  }
}



