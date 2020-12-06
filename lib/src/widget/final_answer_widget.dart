import 'package:flutter/material.dart';

class FinalAnswerWidget extends StatelessWidget {

  final int  notaFinal;
  final void Function() whenRestartQuiz;

  FinalAnswerWidget({this.notaFinal, this.whenRestartQuiz});

  String get fraseReultado {
    if(notaFinal < 8) {
      return 'Parabéns!';
    } else if (notaFinal < 12) {
      return "Você é bom!";
    } else if(notaFinal < 16) {
      return "Impressionante";
    } else {
      return "Nível Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseReultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        SizedBox(height: 5,),
        FlatButton(
          onPressed: whenRestartQuiz,
          child: Text('Reiniciar?', style: TextStyle(color: Colors.white, fontSize: 18),),
          color: Colors.deepOrange,
        )
      ],
    );
  }
}
