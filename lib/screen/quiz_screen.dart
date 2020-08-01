import 'package:flutter/material.dart';
import 'package:quiz_star/my_Icons/my_icon_icons.dart';
import 'package:video_player/video_player.dart';
import '../question_quiz/question_tech.dart';
import '../question_quiz/question_sciance.dart';
import '../question_quiz/question_general_knowledge2.dart';
import '../question_quiz/questions_art.dart';

class QuizScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

Widget _buildAppbar() {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: const Text(
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
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        VideoPlayerController.asset('asset/videos/start_sound_button.mp3')
          ..initialize().then((_) {});
  }

  Widget _buildQuizScreenLandScape(
      BuildContext ctx, String title, IconData icon, String route) {
    final mediaQuery = MediaQuery.of(ctx);
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(ctx).primaryColor,
        ),
        width: mediaQuery.size.width * .45,
        margin: const EdgeInsets.all(10),
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
                          _controller.play();
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
        margin: const EdgeInsets.all(10),
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
                          _controller.play();
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
            _buildSelectedCategory(ctx, 'Art and Literature', MyIcon.create,
                QuestionArt.routeName),
            _buildSelectedCategory(ctx, 'General Knowledge', MyIcon.casino,
                QuestionGeneralKnowledge.routeName),
            _buildSelectedCategory(ctx, 'Siance and Natural', MyIcon.beaker,
                QuestionSciance.routeName),
            _buildSelectedCategory(
                ctx, 'Technology', MyIcon.expeditedssl, QuestionTech.routeName),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
