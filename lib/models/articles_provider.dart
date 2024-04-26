import 'package:flutter/material.dart';
import 'package:recipes_app/models/article.dart';

class ArticlesProvider extends ChangeNotifier {
  List<Article> _articles = [
    Article(
        title: "Avocado",
        description:
            "Avocado is a nutrient-dense fruit that is rich in healthy fats, fiber, and various vitamins and minerals.",
        date: "26-04-2024",
        imageUrl:
            "https://cdn.britannica.com/72/170772-050-D52BF8C2/Avocado-fruits.jpg",
        content:
            "Avocado is not only delicious but also offers numerous health benefits. Its high monounsaturated fat content may help improve heart health, while its fiber content aids digestion and promotes feelings of fullness."),
    Article(
        title: "Kale",
        description:
            "Kale is a leafy green vegetable rich in vitamins K, A, and C, as well as antioxidants and minerals like calcium and manganese.",
        date: "26-04-2024",
        imageUrl:
            "https://media.istockphoto.com/id/135091129/photo/kale.jpg?s=612x612&w=0&k=20&c=Hp7jsS7S1tkFQuHM3-xzM9egFuLA8dI_MYUWuYGUh1U=",
        content:
            "Kale is considered a superfood due to its exceptional nutrient density. It's low in calories but high in nutrients, making it an excellent addition to a healthy diet. Incorporating kale into meals can promote eye health, strengthen bones, and support the immune system."),
    Article(
        title: "Blueberries",
        description:
            "Blueberries are small, flavorful berries loaded with antioxidants, vitamins, and minerals that offer numerous health benefits.",
        date: "26-04-2024",
        imageUrl:
            "https://img.imageboss.me/fourwinds/width/425/dpr:2/shop/products/shutterstock_722035450blueberry2.jpg?v=1531795809",
        content:
            " Blueberries are known for their high antioxidant content, which may help protect against oxidative stress and reduce the risk of chronic diseases like heart disease and cancer. They are also rich in fiber and vitamin C, promoting digestive health and immune function."),
    Article(
        title: "Quinoa",
        description:
            "Quinoa is a gluten-free grain rich in protein, fiber, and essential nutrients like iron, magnesium, and potassium.",
        date: "26-04-2024",
        imageUrl:
            "https://www.hsph.harvard.edu/nutritionsource/wp-content/uploads/sites/30/2018/03/quinoa-1243591_1920.jpg",
        content:
            "Quinoa is a complete protein source, containing all nine essential amino acids necessary for muscle repair and growth. It's also a good source of complex carbohydrates, providing sustained energy levels. Incorporating quinoa into meals can aid weight management, support heart health, and improve digestion."),
    Article(
        title: "Greek Yogurt",
        description:
            "Greek yogurt is a thick, creamy dairy product packed with protein, probiotics, calcium, and B vitamins.",
        date: "26-04-2024",
        imageUrl:
            "https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323169/greek-yoghurt-in-bowl.jpg",
        content:
            " Greek yogurt is a versatile ingredient that can be enjoyed on its own or used in various recipes. It's a great source of probiotics, which promote gut health and boost immunity. Additionally, its high protein content helps build and repair tissues, making it an ideal snack for post-workout recovery."),
    Article(
        title: "Salmon",
        description:
            "Salmon is a fatty fish packed with omega-3 fatty acids, high-quality protein, and essential nutrients like vitamin D and selenium",
        date: "26-04-2024",
        imageUrl:
            "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2F2023-04-baked-salmon-how-to%2Fbaked-salmon-step6-4792",
        content:
            "Consuming salmon regularly may help reduce the risk of heart disease, improve brain function, and support healthy skin and hair. Its omega-3 fatty acids have anti-inflammatory properties and are crucial for overall health.")
  ];

  List<Article> getAllArticles() {
    return _articles;
  }

  List<Article> get articles => _articles;

  set articles(List<Article> articles) {
    _articles = articles;
    notifyListeners();
  }

  void addArticle(Article article) {
    _articles.add(article);
    notifyListeners();
  }

  void removeArticle(Article article) {
    _articles.remove(article);
    notifyListeners();
  }
}
