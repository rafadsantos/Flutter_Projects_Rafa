import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Projetos do Rafa',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: HomePage(),
  )
);