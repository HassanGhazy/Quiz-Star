import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_audio_player/flutter_audio_player.dart';
import 'package:quiz_star/my_Icons/icons_social_media_icons.dart';
import '../screen/quiz_screen.dart';

class Result extends StatefulWidget {
  final int total;

  final int rightAnswer;
  Result(
    this.rightAnswer,
    this.total,
  );
  static const routeName = 'result-screen';

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    double avg = widget.rightAnswer / widget.total * 10;
    double intCorrectAnswer = (widget.rightAnswer / 10);

    String _selectCup() {
      if (avg >= 90) {
        return 'asset/images/cupGold.png';
      }
      if (avg >= 80) {
        return 'asset/images/cupSilver.png';
      }
      if (avg >= 70) {
        return 'asset/images/cupBronse.png';
      }
      return 'asset/images/noCup.png';
    }

     var path = 'asset/videos/congratulation.mp3';
     AudioPlayer.addSound(path);

    String congr() {
      if (avg >= 70) {
        return 'Congrats!';
      }
      if (avg >= 50) {
        return 'Good!';
      }
      if (avg >= 30) {
        return 'Not Bad!';
      }
      return 'Bad!';
    }

    Color colorScore() {
      if (avg >= 50) {
        return Color.fromRGBO(48, 169, 116, 1);
      }
      if (avg >= 30) {
        return Colors.red[300];
      }
      return Colors.red[700];
    }

    Widget _buildResult() {
      return Column(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => setState(() {
              Navigator.of(context).pushReplacementNamed(QuizScreen.routeName);
            }),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Image.asset(_selectCup()),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            congr(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway-Bold',
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            '${avg.toStringAsFixed(2)}% Score',
            style: TextStyle(
                color: colorScore(),
                fontSize: 30,
                fontFamily: 'Raleway-Bold',
                fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            'Quiz Complete Scussfully.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You attempt ',
                  style: TextStyle(fontSize: 19),
                ),
                Text(
                  '10 questions',
                  style: TextStyle(
                      fontSize: 19,
                      color: Color.fromRGBO(48, 102, 146, 1),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' and',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' from that ',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                '${(intCorrectAnswer).toStringAsFixed(0)} answer',
                style: TextStyle(
                    fontSize: 19,
                    color: Color.fromRGBO(55, 162, 116, 1),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' is correct.',
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //     margin: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Share with us:',
                  style: TextStyle(fontSize: 21),
                ),
              ),
              IconButton(
                icon: Icon(IconsSocialMedia.instagram),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(IconsSocialMedia.facebook),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(IconsSocialMedia.whatsapp),
                onPressed: () {},
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      body: (isLandScape)
          ? Center(
              child: Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(206, 220, 231, 1),
                ),
                height: MediaQuery.of(context).size.height * .9,
                width: MediaQuery.of(context).size.width * .8,
                child: ListView(
                  children: <Widget>[_buildResult()],
                ),
              ),
            )
          : Container(
              margin: EdgeInsets.all(65),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(206, 220, 231, 1),
              ),
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width * .8,
              child: _buildResult(),
            ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
