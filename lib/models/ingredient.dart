import 'package:hive_flutter/hive_flutter.dart';
part 'ingredient.g.dart';

@HiveType(typeId: 2)
class Ingredient extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double weight;

  Ingredient({required this.name, required this.weight});
}
