// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recipes_app/pages/add_recipe_page.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});
  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddRecipePage()));
        },
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
        ),
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 32,
          weight: 100.0,
        ),
      ),
      body: Column(
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
        ],
      ),
    );
  }
}
