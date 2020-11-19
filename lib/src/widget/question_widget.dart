import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {

  final dynamic text;

  QuestionWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        text,
          style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
