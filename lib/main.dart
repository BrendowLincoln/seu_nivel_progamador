  import 'package:flutter/material.dart';

main() {
  runApp(SeuNivelProgramador());

}

  class SeuNivelProgramador extends StatelessWidget {

  var perguntaSelecionada = 0;


    void responder() {
      if(perguntaSelecionada == 1) {
        perguntaSelecionada--;
      } else if(perguntaSelecionada == 0) {
        perguntaSelecionada++;
      }
      print(perguntaSelecionada);
      print('Pergunta respondida!');
    }

    void Function() perguntaRespondida2() {
      print('Pergunta respondia #2');
    }

    Widget build(BuildContext context) {

      final List<String> perguntas = [
        'Qual sua cor favorita?',
        'Qual seu animal favorito?'
      ];

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Seu Nível de Programador'),
          ),
            body: Column(
              children: [
                Text(perguntas[perguntaSelecionada]),
                RaisedButton(
                    child: Text('Resposta 1'),
                    onPressed: responder,
                ),
                RaisedButton(
                    child: Text('Resposta 2'),
                    onPressed: responder,
                ),
                RaisedButton(
                    child: Text('Resposta 3'),
                    onPressed: responder,
                )
              ],
            )
        ),
      );
    }
  }