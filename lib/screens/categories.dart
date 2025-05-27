import 'package:flutter/material.dart';
import 'package:online_meals_app/data/dummy_data.dart';
import 'package:online_meals_app/models/category.dart';
import 'package:online_meals_app/screens/meal.dart';
import 'package:online_meals_app/widgets/category_grid_items.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, MealCtgry mealCategory) {
    final filterMeals = dummyMeals.where((meal) => meal.categories.contains(mealCategory.itemId)).toList();
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MealScreens(title: mealCategory.itemTitle, meals: filterMeals)));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          ),
      ],
    );
  }
}
