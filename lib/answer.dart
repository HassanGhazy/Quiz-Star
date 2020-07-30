import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handlr;
  final String ans;
  Answer(this.handlr, this.ans);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(5),
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .08,
          child: RaisedButton(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            color: Color.fromRGBO(203, 220, 230, 1),
            child: Text(
              ans,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onPressed: handlr,
          ),
        ),
      ),
    );
  }
}
