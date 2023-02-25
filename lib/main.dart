import 'package:easy_recipe/data/dummy_data.dart';
import 'package:easy_recipe/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'screens/categories_screens.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'package:easy_recipe/components/main_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 93, 161, 108),
          secondary: Color.fromARGB(255, 196, 182, 141),
        ),
        canvasColor: Color.fromARGB(255, 231, 231, 231),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: const HomeScreen(),
      /* initialRoute: '/',
      routes: {
        '/': (ctx) => const HomeScreen(),
        AppRoutes.categories: (ctx) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.settings: (ctx) => const SettingsScreen(),
      },*/
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [const CategoriesScreen(), const CategoriesMealsScreen()];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MainDrawer(),
      body: CategoriesScreen(),
    );
  }
}
