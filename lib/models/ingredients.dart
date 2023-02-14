import 'dart:ui';

import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  Ingredients({super.key, required this.meal});

  final Meal meal;

  late String ingreList = meal.ingredients.join(' \n');
  late String instrList = meal.steps.join('\n');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ingredients',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          ingreList,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Instructions',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          instrList,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
