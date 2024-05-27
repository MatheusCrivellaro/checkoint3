import 'package:checkoint3/model/filme.dart';
import 'package:flutter/material.dart';

class FilmeDetalhes extends StatefulWidget {
  final Filme filme;

  const FilmeDetalhes({Key? key, required this.filme}) : super(key: key);

  @override
  _FilmeDetalhesState createState() => _FilmeDetalhesState();
}

class _FilmeDetalhesState extends State<FilmeDetalhes> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.filme.isFavorite;
  }

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      widget.filme.isFavorite = isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.filme.title),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: _toggleFavorite,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(widget.filme.imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.filme.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.filme.description),
          ),
        ],
      ),
    );
  }
}
