import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  AnswerWidget({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.deepOrange,
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
