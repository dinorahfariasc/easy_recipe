class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String image;
  final List<String> ingredients;
  final List<String> steps;
  final List<String> nutritions;
  final String duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final String label;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.image,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.label,
    required this.nutritions,
  });
}
