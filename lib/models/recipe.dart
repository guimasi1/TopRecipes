// ignore_for_file: use_super_parameters

import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/models/ingredient.dart';

part 'recipe.g.dart';

@HiveType(typeId: 1)
class Recipe extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final HiveList<Ingredient> ingredients;
  @HiveField(3)
  final String imageUrl;

  Recipe(
      {required this.title,
      required this.description,
      required this.ingredients,
      required this.imageUrl});
}
