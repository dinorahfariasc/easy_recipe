import 'package:easy_recipe/data/dummy_data.dart';
import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/recipe_page.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  //Function press;

  const MealItem(this.meal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipePage(
              meal: meal,
            ),
          ),
        );
      }),
      child: SizedBox(
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
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('lib/assets/images/breakfeast.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(meal.title),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(meal.duration),
                        SizedBox(
                          width: 8,
                        ),
                        Text('4.5 ⭐'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
