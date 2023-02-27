import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import '../screens/recipe_page.dart';
import 'package:flutter/src/widgets/framework.dart';

class Labels extends StatelessWidget {
  final Meal meal;
  final List cond = [0, 0, 0, 0];

  Labels(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    //return Container();

    for (int i = 0; i < 1; i++) {
      if (meal.isGlutenFree) {
        cond[0] = 1;
      }
      if (meal.isLactoseFree) {
        cond[1] = 1;
      }
      if (meal.isVegan) {
        cond[2] = 1;
      }
      if (meal.isVegetarian) {
        cond[3] = 1;
      }
    }
    if (meal.isGlutenFree && meal.isLactoseFree && meal.isVegan) {
      cond[0] = true;
      return Container();
    }
    if (meal.isLactoseFree) {
      cond[1] = true;
      return Container();
    }
    if (meal.isVegan) {
      cond[2] = true;
      return Container();
    }
    if (meal.isVegetarian) {
      cond[3] = true;
      return Container();
    } else {
      return Container(
        child: Text('teste'),
      );
    }

    //return Container();
  }
}
