import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return new Stack(
        color: Colors.greenAccent,
        child: new InkWell(
          onTap: ()=> print("We tapped the Page!!"),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("lets Quizzs", style: new TextStyle(color: Colors.white,fontSize: 50, fontWeight: FontWeight.bold ),),
              new Text("Tap to Start", style: new TextStyle(color: Colors.blue,fontSize: 60, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      );
  }
}