import 'package:easy_recipe/models/ingredients.dart';
import 'package:easy_recipe/models/meal.dart';
import 'package:easy_recipe/models/nutritions.dart';
import 'package:flutter/material.dart';
import 'package:easy_recipe/models/ingredients.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class RecipePage extends StatelessWidget {
  final Meal meal;

  const RecipePage({super.key, required this.meal});

  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not lanch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            const url =
                'https://www.tiktok.com/@mxriyum/video/7146378667156081966?is_from_webapp=1&sender_device=pc&web_id=7155273817496421894';
            launch(url);
            // Add your onPressed code here!
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.play_arrow_rounded),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 3),
            child: Column(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('120 min'), Text('🌿'), Text('🚫')],
                ),
                const SizedBox(
                  height: 20,
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
                      Row(
                        children: [
                          Nutritions(
                            meal: meal,
                            name: "Calories",
                            type: 'grams',
                            color: Colors.red,
                            accentColor: Colors.red.shade300,
                            value: meal.nutritions[0],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Nutritions(
                            meal: meal,
                            name: 'Carbo',
                            type: 'grams',
                            color: Colors.green,
                            accentColor: Colors.greenAccent,
                            value: meal.nutritions[1],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Nutritions(
                            meal: meal,
                            name: 'Protein',
                            type: 'grams',
                            color: Colors.purple,
                            accentColor: Colors.purple.shade200,
                            value: meal.nutritions[2],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Nutritions(
                            meal: meal,
                            name: 'Total Fat',
                            type: 'grams',
                            color: Colors.blue,
                            accentColor: Colors.blue.shade200,
                            value: meal.nutritions[3],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Ingredients(meal: meal),
                      // nutritions
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 