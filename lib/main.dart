import 'package:flutter/material.dart';
import './question_quiz/question_tech.dart';
import './question_quiz/question_sciance.dart';
import './question_quiz/question_general_knowledge2.dart';
import './question_quiz/questions_art.dart';
import './screen/quiz_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Star',
      theme: ThemeData(
        primaryColor:const Color.fromRGBO(45, 65, 89, 1),
        backgroundColor:const Color.fromRGBO(36, 42, 64, 1),
        fontFamily: 'Raleway',
      ),
      home: MyHomePage(title: 'Quiz Star'),
      routes: {
        QuestionArt.routeName: (ctx) => QuestionArt(),
        QuestionGeneralKnowledge.routeName: (ctx) => QuestionGeneralKnowledge(),
        QuestionSciance.routeName: (ctx) => QuestionSciance(),
        QuestionTech.routeName: (ctx) => QuestionTech(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => QuizScreen(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return QuizScreen();
  }
}
