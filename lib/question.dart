import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String text;
  Questions(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontFamily: 'RobotoCondensed'),
      ),
    );
  }
}
