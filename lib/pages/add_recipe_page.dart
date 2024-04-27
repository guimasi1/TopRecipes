// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';
import 'package:recipes_app/pages/homepage.dart';
import 'package:recipes_app/utils/boxes.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  List ingredients = [];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController ingredientWeightController = TextEditingController();
  TextEditingController ingredientNameController = TextEditingController();

  void addIngredient() {
    setState(() {
      ingredients.add(
          [ingredientNameController.text, ingredientWeightController.text]);
      ingredientWeightController.text = "";
      ingredientNameController.text = "";
    });
  }

  void saveRecipe() async {
    final title = titleController.text;
    final description = descriptionController.text;
    final recipe = Recipe(
        title: title,
        description: description,
        ingredientsList: ingredients,
        imageUrl: "");

    boxRecipes.put('key_$title', recipe);

    // Navigator.pushReplacement(
    //   // ignore: use_build_context_synchronously
    //   context,
    //   MaterialPageRoute(builder: (context) => RecipesPage()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
      ),
      backgroundColor: Colors.green[400],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                  child: Text(
                "Add recipe",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              controller: titleController,
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                hintText: "Title",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textCapitalization: TextCapitalization.sentences,
                        autofocus: false,
                        controller: ingredientNameController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            hintText: "Ingredient name"),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    SizedBox(
                      width: 70,
                      child: TextField(
                        controller: ingredientWeightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          hintText: "g",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 100,
                  child: TextButton(
                      onPressed: addIngredient,
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.amber),
                      child: Text("Add")),
                ),
              ],
            ),
            Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                expands: true,
                maxLines: null,
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: "Write here the recipe's description...",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.multiline,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ingredients.length,
                itemBuilder: (context, index) {
                  String ingredientName = ingredients[index][0];
                  String ingredientWeight = (ingredients[index][1]);
                  return ListTile(
                    title: Text(ingredientName),
                    trailing: Text(
                      " $ingredientWeight grams",
                      style: TextStyle(fontSize: 15),
                    ),
                  );
                },
              ),
            ),
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  saveRecipe();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ));
                },
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
