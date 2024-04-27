import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/models/articles_provider.dart';
import 'package:recipes_app/models/ingredient.dart';
import 'package:recipes_app/models/recipe.dart';
import 'package:recipes_app/pages/intro_page.dart';
import 'package:recipes_app/utils/boxes.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(IngredientAdapter());
  Hive.registerAdapter(RecipeAdapter());
  boxIngredients = await Hive.openBox<Ingredient>("ingredientsBox");
  boxRecipes = await Hive.openBox<Recipe>('recipesBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ArticlesProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
