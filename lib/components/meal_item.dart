import 'package:easy_recipe/data/dummy_data.dart';
import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/recipe_page.dart';
import '../components/labels.dart';

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
        // meal
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('lib/assets/images/breakfeast.jpg'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      meal.title,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.hourglass_bottom_rounded,
                          size: 20,
                        ),
                        Text(meal.duration),
                        const SizedBox(
                          width: 8,
                        ),
                        //Labels(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Label(meal),
                      ],
                    ),
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
