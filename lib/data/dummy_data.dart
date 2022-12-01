import 'package:flutter/material.dart';
import '../models/category.dart';

// ignore: unnecessary_const
const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Café da Manhã',
    color: Colors.orange,
  ),
  Category(
    id: 'c2',
    title: 'Almoço',
    color: Color.fromARGB(255, 201, 15, 2),
  ),
  Category(
    id: 'c3',
    title: 'Lanches',
    color: Color.fromARGB(255, 78, 0, 141),
  ),
  Category(
    id: 'c4',
    title: 'Jantar',
    color: Color.fromARGB(255, 13, 0, 189),
  ),
  Category(
    id: 'c5',
    title: 'Sobremesas',
    color: Color.fromARGB(255, 175, 0, 123),
  ),
  Category(
    id: 'c6',
    title: 'Sucos',
    color: Color.fromARGB(255, 8, 71, 0),
  ),
  Category(
    id: 'c7',
    title: 'Caldos',
    color: Color.fromARGB(255, 185, 49, 0),
  ),
  Category(
    id: 'c8',
    title: 'Vegana',
    color: Color.fromARGB(255, 104, 214, 0),
  ),
  Category(
    id: 'c9',
    title: 'Vegetariana',
    color: Color.fromARGB(255, 0, 202, 152),
  ),
  Category(
    id: 'c10',
    title: 'LowCarb',
    color: Color.fromARGB(255, 0, 0, 0),
  ),
];
