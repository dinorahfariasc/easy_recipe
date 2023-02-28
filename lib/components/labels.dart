import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import '../screens/recipe_page.dart';
import 'package:flutter/src/widgets/framework.dart';

class Label extends StatelessWidget {
  final Meal meal;

  const Label(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        meal.isGlutenFree ? Text('Gluten Free ') : Container(),
        meal.isLactoseFree ? Text('Lactose Free ') : Container(),
        meal.isVegan ? Text('Vegan ') : Container(),
        meal.isVegetarian ? Text('Vegetarian ') : Container(),
      ],
    );
  }
}
