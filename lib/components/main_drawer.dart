import 'package:easy_recipe/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_recipe/utils/app_routes.dart';
import 'package:easy_recipe/main.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade600,
        ),
      ),
      onLongPress: onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              alignment: Alignment.center,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              child: const Text(
                'easy recipe',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _createItem(
              Icons.restaurant_menu_rounded,
              "Recipes",
              () => Navigator.of(context).pushNamed(AppRoutes.home),
            ),
            _createItem(
              Icons.settings,
              'Settings',
              () => Navigator.of(context).pushNamed(AppRoutes.settings),
            )
          ],
        ),
      ),
    );
  }
}



           //   Navigator.of(context).pushReplacementNamed('/')