// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/models/recipe.dart';

class RecipesDatabase {
  List<Recipe> recipes = [];
  final _myBox = Hive.box("mybox");

  void createInitialData() {
    recipes = [];
  }

  void loadData() {
    recipes = _myBox.get("RECIPES");
  }

  void updateData() {
    recipes = _myBox.put("RECIPES", recipes) as List<Recipe>;
  }
}
