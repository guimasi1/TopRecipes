// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailsPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text(recipe.title),
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
                children: <Widget>[Text(recipe.description)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
