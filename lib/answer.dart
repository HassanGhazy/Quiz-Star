import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Answer extends StatefulWidget {
  final Function handlr;
  final String ans;

  Answer(this.handlr, this.ans);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  _buildSoundBtn() {
    VideoPlayerController _controller;

    setState(() {
      _controller = VideoPlayerController.asset('asset/videos/Answer_click.mp3')
        ..initialize().then((_) {});
    });
    return _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandScape = mediaQuery.orientation == Orientation.landscape;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Container(
          width: (isLandScape)
              ? mediaQuery.size.width * .7
              : mediaQuery.size.width * .9,
          height: (isLandScape)
              ? mediaQuery.size.height * .10
              : mediaQuery.size.height * .08,
          child: RaisedButton(
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            highlightColor: const Color.fromRGBO(231, 130, 48, 1),
            hoverColor: const Color.fromRGBO(231, 130, 48, 1),
            color: const Color.fromRGBO(203, 220, 230, 1),
            child: Text(
              widget.ans,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onPressed: () async {
              _buildSoundBtn();
              widget.handlr();
            },
          ),
        ),
      ),
    );
  }
}
