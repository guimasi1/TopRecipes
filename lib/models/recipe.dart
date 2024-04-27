// ignore_for_file: use_super_parameters

import 'package:hive_flutter/hive_flutter.dart';

part 'recipe.g.dart';

@HiveType(typeId: 1)
class Recipe extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  // @HiveField(2)
  // final HiveList<Ingredient> ingredients;
  @HiveField(3)
  final String imageUrl;
  @HiveField(4)
  final List ingredientsList;

  Recipe(
      {required this.title,
      required this.description,
      required this.ingredientsList,
      required this.imageUrl});
}
