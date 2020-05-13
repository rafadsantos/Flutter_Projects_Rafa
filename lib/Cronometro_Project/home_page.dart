import 'package:flutter/material.dart';
import 'package:flutter_projects_rafa/Cronometro_Project/cronometro_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> lista = [];
  int numId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cronômetros'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _adicionarCronometro(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (contexto, index) {
            return lista[index];
          },
        )
      )
    );
  }
  
  // adiciona na lista um conjunto de widgets que caracteriza um cronômetro e atualiza o seu número de identificação.
  void _adicionarCronometro() {
    setState(() {
      lista.add(CronometroWidget(id: numId));
      numId++;
    });
  }
}
