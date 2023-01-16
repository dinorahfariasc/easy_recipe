import 'package:easy_recipe/components/meal_item.dart';
import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('receitas'),
      ),
      body: Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(20),
          children: dummyMeals.map((meal) {
            return MealItem(meal);
          }).toList(),
        ),
      ),
    );
  }
}
