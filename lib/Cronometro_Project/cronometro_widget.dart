import 'package:flutter/material.dart';

class CronometroWidget extends StatelessWidget {
  // número de identificação do cronômetro
  final int id;
  CronometroWidget({@required this.id});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        // número identificador do cronômetro
        Container(
          width: 20,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text(
            id.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // ícone de play
        Icon(
          Icons.play_arrow,
          color: Colors.green,
        ),
        // botão RESET
        RaisedButton(
          onPressed: () {},
          child: Text('RESET'),
          color: Colors.yellow,
        ),
        // horas:minutos:segundos
        Text('00:00:00'),
      ],
    );
  }
}
