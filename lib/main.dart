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
    var _notaTotal = 0;
    final _questions = const [
      {
        'texto': 'Qual sua linguagem favorita?',
        'respostas': [
          {'texto': 'PHP', 'nota': 5},
          {'texto': 'Dart', 'nota': 6},
          {'texto': 'JavaScript', 'nota': 1},
          {'texto': 'C#', 'nota': 3}
        ]
      },
      {
        'texto': 'Qual seu banco de dados favorito?',
        'respostas': [
          {'texto': 'MySQL', 'nota': 5},
          {'texto': 'MongoDB', 'nota': 1},
          {'texto': 'SQL Server', 'nota': 3},
          {'texto': 'CloudFirestore', 'nota': 6}
        ],
      },
      {
        'texto': 'Qual seu framework favorito?',
        'respostas': [
          {'texto': '.NET Framework', 'nota': 6},
          {'texto': 'Spring Boot', 'nota': 5,},
          {'texto': 'Flutter', 'nota': 1},
          {'texto': 'Angular 2', 'nota': 3}
        ],
      },
    ];


    void _toAnswer(int nota) {
      if(hasSelectionQuestion) {
        setState(() {
          _selectedQuestion++;
          _notaTotal +=  nota;
        });
      }
    }

    void restarQuiz() {
      setState(() {
        _selectedQuestion = 0;
        _notaTotal = 0;
      });
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
            : FinalAnswerWidget(notaFinal: _notaTotal, whenRestartQuiz: restarQuiz,)
        ),
      ); 
    }
  }