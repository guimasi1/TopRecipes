// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipes_app/models/article.dart';

class ArticleDetailsPage extends StatelessWidget {
  final Article article;
  const ArticleDetailsPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
        centerTitle: true,
      ),
      backgroundColor: Colors.green[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (article.imageUrl.isNotEmpty) Image.network(article.imageUrl),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(article.date,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontStyle: FontStyle.italic)),
                  SizedBox(height: 10),
                  Text(article.content, style: TextStyle(fontSize: 17)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
