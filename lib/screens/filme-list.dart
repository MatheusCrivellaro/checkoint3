import 'package:checkoint3/model/filme.dart';
import 'package:checkoint3/screens/filme-detalhes.dart';
import 'package:checkoint3/widgets/filme-card.dart';
import 'package:flutter/material.dart';

class FilmeLista extends StatefulWidget {
  @override
  _FilmeListaState createState() => _FilmeListaState();
}

class _FilmeListaState extends State<FilmeLista> {
  final List<Filme> filmes = [
    Filme(
      title: 'Parasita',
      description: 'Um filme sul-coreano emocionante de Bong Joon-ho que explora as desigualdades sociais e as relações de classe.',
      imageUrl: ''
    ),

    Filme(
      title: 'A Origem',
      description: 'Um thriller de ficção científica dirigido por Christopher Nolan que investiga os limites entre a realidade e os sonhos.',
        imageUrl: ''
    ),

    Filme(
      title: 'O Senhor dos Anéis: A Sociedade do Anel',
      description: 'Um épico de fantasia dirigido por Peter Jackson, acompanhando Frodo Bolseiro e seus amigos em uma missão para destruir um anel poderoso.',
        imageUrl: ''
    ),

    Filme(
      title: 'Pulp Fiction: Tempo de Violência',
      description: 'Um filme icônico de Quentin Tarantino, entrelaçando múltiplas histórias de criminosos em Los Angeles com diálogos afiados e personagens memoráveis.',
        imageUrl: ''
    ),

    Filme(
      title: 'A Vida é Bela',
      description: 'Um drama italiano comovente de Roberto Benigni, celebrando o amor e a resiliência humana diante da tragédia.',
        imageUrl: ''
    ),
    // Add more movies as needed
  ];

  void _navigateToDetails(Filme filme) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FilmeDetalhes(filme: filme),
      ),
    );

    if (result == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes'),
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) {
          return FilmeCard(
            filme: filmes[index],
            onTap: () => _navigateToDetails(filmes[index]),
          );
        },
      ),
    );
  }
}
