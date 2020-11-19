import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final dynamic text;
  final void Function() onPressed;

  AnswerWidget({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
