import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new Material(
      color: Colors.blueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Your Score is : ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0),),
          new Text("2/5"),
          new IconButton(
            icon: new Icon(Icons.arrow_right),
            color: Colors.black,
            iconSize: 50.0,
            onPressed: ()=> print("Cool"),
          )

        ],
      ),
    );
  }
}