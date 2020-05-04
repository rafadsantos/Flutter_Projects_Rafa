import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String nome;
  final IconData icone;
  final Function onPre;

  ButtonWidget({this.nome, this.icone, this.onPre});

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: onPre,
      icon: Icon(
        icone,
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        nome == null ? 'Sem Nome' : nome,
        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
