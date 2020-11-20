import 'package:flutter/material.dart';
import 'package:seu_nivel_programador/src/widget/final_answer_widget.dart';
import 'package:seu_nivel_programador/src/widget/quiz_widget.dart';
main() {
  runApp(SeuNivelProgramador());

}

  class SeuNivelProgramador extends StatefulWidget {

   SeuNivelProgramadorState createState() => SeuNivelProgramadorState();

  }

  class SeuNivelProgramadorState extends State<SeuNivelProgramador> {

    var _selectedQuestion = 0;

    final _questions = const [
      {
        'texto': 'Qual sua linguagem favorita?',
        'respostas': ['PHP', 'Dart', 'JavaScrit', 'C#']
      },
      {
        'texto': 'Qual seu banco de dados favorito?',
        'respostas': ['MySQL', 'MongoDB', 'SQL Server', 'CloudFirestore']
      },
      {
        'texto': 'Qual seu framework favorito?',
        'respostas': ['.NET Framework', 'Spring', 'Flutter', 'Angular 2']
      },
    ];


    void _toAnswer() {
      if(hasSelectionQuestion) {
        setState(() {
          _selectedQuestion++;
        });
      }
      print(_selectedQuestion);
    }

    bool get hasSelectionQuestion  => _selectedQuestion < _questions.length;

    Widget build(BuildContext context) {

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.deepOrange),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Seu Nível de Programador'),
            ),
            body: hasSelectionQuestion
                ? QuizWidget(
              questions: _questions, 
              selectedQuestion: _selectedQuestion, 
              toAnswer: _toAnswer,
            )
            : FinalAnswerWidget()
        ),
      ); 
    }
  }