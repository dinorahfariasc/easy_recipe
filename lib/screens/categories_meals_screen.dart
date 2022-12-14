import 'package:easy_recipe/components/meal_item.dart';
import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: ((context, index) {
          return MealItem(
            meal: categoryMeals[index],
          );
        }),
      ),
    );
  }
}
