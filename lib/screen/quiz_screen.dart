import 'package:flutter/material.dart';
import '../question_quiz/question_tech.dart';
import '../question_quiz/question_sciance.dart';
import '../question_quiz/question_general_knowledge2.dart';
import '../question_quiz/questions_art.dart';

import '../my_Icons/icon2_icons.dart';
import '../my_Icons/icon3_icons.dart';
import '../my_Icons/icon1_icons.dart';
import '../my_Icons/icon4_icons.dart';

class QuizScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

Widget _buildAppbar() {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        'Quiz Star',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
      ),
    ),
    centerTitle: true,
    shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(300),
        bottomRight: Radius.circular(300),
      ),
    ),
  );
}

class _QuizScreenState extends State<QuizScreen> {
  Widget _buildQuizScreenLandScape(
      BuildContext ctx, String title, IconData icon, String route) {
    final mediaQuery = MediaQuery.of(ctx);
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(ctx).primaryColor,
        ),
        width: mediaQuery.size.width * .45,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: mediaQuery.size.height * .12,
              child: Row(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        icon,
                        color: Colors.amber,
                      ),
                      FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                            ),
                          ),
                        ),
                        onPressed: () => setState(() {
                          Navigator.of(context)
                              .pushReplacementNamed(route, arguments: {
                            'title': title,
                            'icon': icon,
                          });
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedCategory(
      BuildContext ctx, String title, IconData icon, String route) {
    final isLandScape = MediaQuery.of(ctx).orientation == Orientation.landscape;

    if (!isLandScape) {
      return _buildCategoryQuizNotLandScape(ctx, title, icon, route);
    }
    return _buildQuizScreenLandScape(ctx, title, icon, route);
  }

  Widget _buildCategoryQuizNotLandScape(
      BuildContext ctx, String title, IconData icon, String route) {
    final mediaQuery = MediaQuery.of(ctx);

    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(ctx).primaryColor,
        ),
        width: mediaQuery.size.width * .7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              height: mediaQuery.size.height * .07,
              child: Row(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        icon,
                        color: Colors.amber,
                      ),
                      FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                            ),
                          ),
                        ),
                        onPressed: () => setState(() {
                          Navigator.of(context)
                              .pushReplacementNamed(route, arguments: {
                            'title': title,
                            'icon': icon,
                          });
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: _buildAppbar(),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildSelectedCategory(
                ctx, 'Art and Literature', Icon1.create, QuestionArt.routeName),
            _buildSelectedCategory(ctx, 'General Knowledge', Icon2.casino,
                QuestionGeneralKnowledge.routeName),
            _buildSelectedCategory(ctx, 'Siance and Natural', Icon3.beaker,
                QuestionSciance.routeName),
            _buildSelectedCategory(
                ctx, 'Technology', Icon4.expeditedssl, QuestionTech.routeName),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
