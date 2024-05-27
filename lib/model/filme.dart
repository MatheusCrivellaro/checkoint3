class Filme {
  final String title;
  final String description;
  final String imageUrl;
  bool isFavorite;

  Filme({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isFavorite = false
  });
}