import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../UI/answer_button.dart';
import '../UI/question_text.dart';

import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget{

    @override
    State createState() => new QuizPageState();
    }
class QuizPageState extends State<QuizPage>{ 
  
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Lion is a Bird", false),
    new Question("Githeri is Food", true),
    new Question('We will Forever Worship in Heaven', true),
    new Question("Kiboko Huzaa", true),
    new Question("Nyoka Hukamuliwa", false)
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldBeVisible = false;

  void initState(){
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText =currentQuestion.question;
    questionNumber = quiz.questionNumber;

  }

  void handleAnswer(bool answer){
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState((){
      overlayShouldBeVisible =true;

    });
  }




  @override
  Widget build(BuildContext context){
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(//THIS IS OUR MAIN PAGE 
          children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)), // ttrue button
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => handleAnswer(false)),// false button
          ],
        ),
       overlayShouldBeVisible == true? new CorrectWrongOverlay(isCorrect): new Container()
      ], 
    );
  }
}
 