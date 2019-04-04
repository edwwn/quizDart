import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget{
    @override
    State createState() => new QuizPageState();
    }
class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context){
    return new Stack(
      children: <Widget>[
        new Column(//THIS IS OUR MAIN PAGE
          children: <Widget>[
            new Expanded(
              child: new Material(//THIS IS THE TRUE BUTTON
              color: Colors.greenAccent,
              child: new InkWell(
                onTap: ()=>print("You answered True"),
                child: new Center(
                  child: new Container(
                    child: new Text("True")
                  ) ,
                ),
              ),
            ),
            )
          ],
        )
      ],
    );
  }
}
