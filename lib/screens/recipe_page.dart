import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecipePage extends StatelessWidget {
  final Meal meal;

  const RecipePage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: [
                  Image.asset(meal.image),
                  Text(meal.title),
                ]),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
