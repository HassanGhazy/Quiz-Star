import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_star/my_Icons/my_icon_icons.dart';
import 'package:social_share/social_share.dart';
import 'package:video_player/video_player.dart';
import '../screen/quiz_screen.dart';
import 'dart:async';
import 'package:screenshot/screenshot.dart';

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
  VideoPlayerController _controller;
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('asset/videos/congratulation.mp3')
      ..initialize().then((_) {});
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final isLandScape = mediaQuery.orientation == Orientation.landscape;

    double avg = widget.rightAnswer / widget.total * 10;
    double intCorrectAnswer = (widget.rightAnswer / 10);

    String _selectCup() {
      if (avg >= 90) {
        _controller.play();
        return 'asset/images/cupGold.png';
      }
      if (avg >= 80) {
        _controller.play();
        return 'asset/images/cupSilver.png';
      }
      if (avg >= 70) {
        _controller.play();
        return 'asset/images/cupBronse.png';
      }
      return 'asset/images/noCup.png';
    }

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
      return Screenshot(
        controller: screenshotController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                ),
                Image.asset(_selectCup()),
                Padding(
                  padding: const EdgeInsets.all(10),
                ),
                Text(
                  congr(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway-Bold',
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10)),
                Text(
                  '${avg.toStringAsFixed(2)}% Score',
                  style: TextStyle(
                      color: colorScore(),
                      fontSize: 30,
                      fontFamily: 'Raleway-Bold',
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: const EdgeInsets.all(10)),
                const Text(
                  'Quiz Complete Successfully.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'You attempt ',
                        style: TextStyle(fontSize: 19),
                      ),
                      const Text(
                        '10 questions',
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromRGBO(48, 102, 146, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
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
                    const Text(
                      ' from that ',
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      '${(intCorrectAnswer).toStringAsFixed(0)} answer',
                      style: const TextStyle(
                          fontSize: 19,
                          color: const Color.fromRGBO(55, 162, 116, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
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
                      child: const Text(
                        'Share with us:',
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    IconButton(
                      icon: Icon(MyIcon.instagram),
                      onPressed: () async {
                        await screenshotController
                            .capture()
                            .then((image) async {
                          SocialShare.shareInstagramStory(
                            image.path,
                            "#ffffff",
                            "#000000",
                            "https://google.com",
                          );
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(MyIcon.facebook_1),
                      onPressed: () async {
                        await screenshotController
                            .capture()
                            .then((image) async {
                          //facebook appId is mandatory for andorid or else share won't work
                          Platform.isAndroid
                              ? SocialShare.shareFacebookStory(image.path,
                                  "#ffffff", "#000000", "https://google.com",
                                  appId: "698900830666613")
                              : SocialShare.shareFacebookStory(image.path,
                                  "#ffffff", "#000000", "https://google.com");
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(MyIcon.twitter),
                      onPressed: () async {
                        SocialShare.shareTwitter(
                            "${congr()} \n $avg% \n Quiz Complete Successfully \n you attempt 10 Questions and from that ${(intCorrectAnswer).toStringAsFixed(0)} answer is correct.",
                            hashtags: ["app", "quiz_star", "flutter"],
                            url: "",
                            trailingText: "");
                      },
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    @override
    void dispose() {
      super.dispose();
      _controller.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => setState(() {
              Navigator.of(context).pushReplacementNamed(QuizScreen.routeName);
            }),
          )
        ],
      ),
      body: (isLandScape)
          ? Center(
              child: Container(
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(206, 220, 231, 1),
                ),
                height: mediaQuery.size.height * .9,
                width: mediaQuery.size.width * .8,
                child: ListView(
                  children: <Widget>[_buildResult()],
                ),
              ),
            )
          : Container(
              margin: const EdgeInsets.all(65),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromRGBO(206, 220, 231, 1),
              ),
              height: mediaQuery.size.height * .6,
              width: mediaQuery.size.width * .8,
              child: _buildResult(),
            ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
