import 'package:checkoint3/screens/filme-list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FilmesApp());
}

class FilmesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FilmeLista(),
    );
  }
}