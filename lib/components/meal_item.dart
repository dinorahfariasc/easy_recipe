import 'package:easy_recipe/data/dummy_data.dart';
import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  //Function press;

  const MealItem(this.meal, {Key? key}) : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/meal-item',
      arguments: meal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.favorite_border),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Image(
                image: AssetImage('lib/assets/images/breakfeast.jpg'),
              ),
            ),
            Text(meal.title),
          ],
        ),
      ),
    );
  }
}
