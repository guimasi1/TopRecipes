// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/components/article_tile.dart';
import 'package:recipes_app/models/article.dart';
import 'package:recipes_app/models/articles_provider.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Consumer<ArticlesProvider>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: Colors.lightGreen[200],
              appBar: appBar(),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                controller: myController,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30, bottom: 20),
                            child: Text(
                              "Popular now",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: value.getAllArticles().length,
                              itemBuilder: (BuildContext context, int index) {
                                Article article = value.getAllArticles()[index];
                                return ArticleTile(article: article);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.yellow[600],
      title: Text(
        "ARTICLES",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
