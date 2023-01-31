import 'package:easy_recipe/models/meal.dart';
import 'package:easy_recipe/models/nutritions.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  final Meal meal;

  const RecipePage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.favorite_border),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(meal.image),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.title,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'descricao do prato',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Nutritions',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.arrow_right_outlined),
                      )
                    ],
                  ),
                  Nutritions(meal: meal),
                  // nutritions
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 