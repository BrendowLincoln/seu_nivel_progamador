import 'package:flutter/material.dart';
import 'src/widget/question_widget.dart';
import 'src/widget/answer_widget.dart';

main() {
  runApp(SeuNivelProgramador());

}

  class SeuNivelProgramador extends StatefulWidget {

   SeuNivelProgramadorState createState() => SeuNivelProgramadorState();

  }

  class SeuNivelProgramadorState extends State<SeuNivelProgramador> {

    var _perguntaSelecionada = 0;


    void _answer() {
      setState(() {
        _perguntaSelecionada++;
    });
    }



    Widget build(BuildContext context) {
      final List<Map<String, Object>> questions = [
        {
          'texto': 'Qual sua linguagem favorita?',
          'respostas': ['PHP', 'Dart', 'JavaScrit', 'Flutter']
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

      List<String> respostas = questions[_perguntaSelecionada]['respostas'];

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Seu Nível de Programador'),
            ),
            body: Column(
              children: [
                QuestionWidget(text: questions[_perguntaSelecionada]['texto']),
                ...respostas.map((t) => AnswerWidget(text: t, onPressed: _answer,)).toList(),
              ],
            )
        ),
      );
    }
  }