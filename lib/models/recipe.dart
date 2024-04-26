import 'package:recipes_app/models/article.dart';
import 'package:recipes_app/models/ingredient.dart';

class Recipe extends Article {
  final List<Ingredient> ingredients;
  Recipe.empty(this.ingredients) : super.empty();
}
