// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/components/recipe_tile.dart';
import 'package:recipes_app/models/recipe.dart';
import 'package:recipes_app/pages/add_recipe_page.dart';
import 'package:recipes_app/utils/boxes.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});
  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  TextEditingController titleController = TextEditingController();

  void deleteRecipe(index) {
    boxRecipes.deleteAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddRecipePage()));
        },
        child: const Icon(Icons.add, color: Colors.white, size: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Center(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Your recipes",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                      color: Colors.black),
                ),
              ),
            ),
            ValueListenableBuilder<Box>(
                valueListenable: boxRecipes.listenable(),
                builder: (context, box, widget) {
                  return Expanded(
                      child: ListView.builder(
                    itemCount: boxRecipes.length,
                    itemBuilder: (context, index) {
                      Recipe recipe = boxRecipes.getAt(index);
                      return RecipeTile(
                        recipe: recipe,
                        deleteRecipe: (context) {
                          deleteRecipe(index);
                        },
                      );
                    },
                  ));
                })
          ],
        ),
      ),
    );
  }
}
