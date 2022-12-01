import 'package:flutter/material.dart';
import 'screens/categories_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.lightGreen,
          secondary: Colors.indigo,
        ),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(fontFamily: "Raleway"),
              headline6: TextStyle(fontFamily: "RobotoCondensed"),
            ),
      ),
      home: CategoriesScreen(),
    );
  }
}
