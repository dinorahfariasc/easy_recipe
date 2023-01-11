// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:easy_recipe/models/meal.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vamos Cozinhar?"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: dummyMeals.map((meals) {
                return Container(
                  child: Text(meals.label),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(15),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pink,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintText: "Saerch your perfect recipe",
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              children: dummyCategories.map((cat) {
                return CategoryItem(cat);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
