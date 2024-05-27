import 'package:checkoint3/model/filme.dart';
import 'package:flutter/material.dart';

class FilmeCard extends StatelessWidget {
  final Filme filme;
  final VoidCallback onTap;

  const FilmeCard({
    Key? key,
    required this.filme,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Image.network(filme.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    filme.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    filme.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(filme.description),
            ),
          ],
        ),
      ),
    );
  }
}
