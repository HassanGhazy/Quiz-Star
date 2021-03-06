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
        style:const TextStyle(
            fontSize: 22, color: Colors.white, fontFamily: 'RobotoCondensed'),
      ),
    );
  }
}
