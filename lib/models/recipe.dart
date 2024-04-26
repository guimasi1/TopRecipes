// ignore_for_file: use_super_parameters

import 'package:recipes_app/models/article.dart';
import 'package:recipes_app/models/ingredient.dart';

class Recipe extends Article {
  final List<Ingredient> ingredients;

  Recipe(
      {title, content, description, date, imageUrl, required this.ingredients})
      : super(
            title: title,
            content: content,
            description: description,
            date: date,
            imageUrl: imageUrl);
}
