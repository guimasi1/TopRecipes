import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/models/articles_provider.dart';
import 'package:recipes_app/pages/intro_page.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox("mybox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ArticlesProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
