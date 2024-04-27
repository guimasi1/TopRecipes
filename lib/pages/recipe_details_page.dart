// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';

class RecipeDetailsPage extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailsPage({super.key, required this.recipe});

  @override
  State<RecipeDetailsPage> createState() => _RecipeDetailsPageState();
}

class _RecipeDetailsPageState extends State<RecipeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text(widget.recipe.title),
        centerTitle: true,
      ),
      backgroundColor: Colors.green[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // if (recipe.imageUrl.isNotEmpty) Image.network(recipe.imageUrl),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.recipe.ingredientsList.length,
                    itemBuilder: (context, index) {
                      String title = widget.recipe.ingredientsList[index][0];
                      String weight = widget.recipe.ingredientsList[index][1];
                      return ListTile(
                        title: Text(
                          title,
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: Text(
                          "$weight g",
                          style: TextStyle(fontSize: 18),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Method",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.recipe.description,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
