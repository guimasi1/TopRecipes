// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/database/database.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  final _myBox = Hive.box("mybox");
  RecipesDatabase db = RecipesDatabase();

  @override
  void initState() {
    if (_myBox.get("RECIPES") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      floatingActionButton: ElevatedButton(
        onPressed: () {},
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
