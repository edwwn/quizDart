import 'package:flutter/material.dart';
import 'quiz_page.dart';

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return new Material(
        color: Colors.greenAccent,
        child: new InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder:(BuildContext contet)=> new QuizPage())),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Lets Quizzs", style: new TextStyle(color: Colors.white,fontSize: 50, fontWeight: FontWeight.bold ),),
              new Text("Tap to Start", style: new TextStyle(color: Colors.blue,fontSize: 60, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      );
  }
}