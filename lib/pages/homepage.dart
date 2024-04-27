// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipes_app/pages/articles_page.dart';
import 'package:recipes_app/pages/recipes_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List _pages = [RecipesPage()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: appBar(),
      body: _pages[selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.green[600],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              DrawerHeader(child: Image.asset('lib/assets/tp.png')),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("H O M E"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  leading: Icon(Icons.food_bank),
                  title: Text("R E C I P E S"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  leading: Icon(Icons.library_books),
                  title: Text("A R T I C L E S"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArticlesPage()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        backgroundColor: Colors.yellow[600],
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu));
          },
        ));
  }
}
