class Article {
  final String title;
  final String description;
  final String date;
  final String imageUrl;
  String content;

  Article.empty()
      : title = '',
        description = '',
        date = '',
        imageUrl = '',
        content = '';

  Article(
      {required this.title,
      required this.description,
      required this.date,
      required this.imageUrl,
      required this.content});
}
