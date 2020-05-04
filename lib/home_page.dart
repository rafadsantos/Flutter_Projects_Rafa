import 'package:flutter/material.dart';
import 'button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _largura = 100.0;
  double _altura = 100.0;

  void _setTamanhoDown() {
    if (_largura > 100) {
      setState(() {
        _largura = _largura - 10;
        _altura = _altura - 10;
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Atenção'),
            content: Text('Tamanho mínimo atingido!'),
          );
        },
      );
    }
  }

  void _setTamanhoUp() {
    if (_largura < 150) {
      setState(() {
        _largura = _largura + 10;
        _altura = _altura + 10;
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Atenção'),
            content: Text('Tamanho máximo atingido!'),
          );
        },
      );
    }
  }

  /* ***********************
          Container
   *********************** */
  Widget containerWorldWidget() {
    return Container(
      alignment: Alignment.center,
      width: _largura,
      height: _altura,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        'Hello, world!',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rafa's Projects"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            containerWorldWidget(),
            Divider(thickness: 1.5, color: Theme.of(context).primaryColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Largura: $_largura',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  'Altura: $_altura',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            ButtonWidget(
              nome: 'Up',
              icone: Icons.arrow_upward,
              onPre: _setTamanhoUp,
            ),
            ButtonWidget(
              icone: Icons.arrow_downward,
              onPre: _setTamanhoDown,
            ),
          ],
        ),
      ),
    );
  }
}
