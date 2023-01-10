// ignore_for_file: prefer_const_constructors

import 'dart:ui';

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
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintText: "pesquisar",
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
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
