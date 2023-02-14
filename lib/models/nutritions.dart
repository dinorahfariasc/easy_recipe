import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nutritions extends StatelessWidget {
  const Nutritions(
      {super.key,
      required this.meal,
      required this.name,
      required this.type,
      required this.color,
      required this.accentColor,
      required this.value});

  final Meal meal;
  final Color color;
  final String name;
  final String type;
  final Color accentColor;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 50,
            height: 40,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  type,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
