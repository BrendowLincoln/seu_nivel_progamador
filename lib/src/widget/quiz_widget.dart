import 'package:flutter/material.dart';
import 'package:seu_nivel_programador/src/widget/answer_widget.dart';
import 'package:seu_nivel_programador/src/widget/question_widget.dart';

class QuizWidget extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) toAnswer;

  QuizWidget({@required this.questions, @required this.selectedQuestion, @required this.toAnswer,});

  bool get hasSelectionQuestion  => selectedQuestion < questions.length;

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> answers = hasSelectionQuestion
        ? questions[selectedQuestion]['respostas']
        : null;

    return Column(
        children: [
          QuestionWidget(text: questions[selectedQuestion]['texto']),
          ...answers.map((resp) => AnswerWidget(text: resp['texto'], onPressed: () => toAnswer(resp['nota']))).toList(),
        ]);
  }
}
