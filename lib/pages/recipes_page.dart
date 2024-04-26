// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
        ListView.builder(
          itemBuilder: (context, index) {
            return;
          },
        )
      ],
    );
  }
}
