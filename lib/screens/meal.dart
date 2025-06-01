import 'package:flutter/material.dart';
import 'package:online_meals_app/models/meal.dart';
import 'package:online_meals_app/screens/meal_details.dart';
import 'package:online_meals_app/widgets/meal_item.dart';

class MealScreens extends StatelessWidget {
  const MealScreens({super.key, this.title, required this.meals, required this.onToggleFavorite});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MailDatailsScreen(meal: meal, onToggleFavorite: onToggleFavorite)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(itemBuilder: (ctx, index) => Text(meals[index].title));
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "There are nothing here....",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(height: 16),
            Text(
              "Select another category",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      );
    }

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder:
            (ctx, index) => MailItem(
              meal: meals[index],
              onSelectMeal: (meal) {
                selectMeal(context, meal);
              },
            ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(appBar: AppBar(title: Text(title!)), body: content);
  }
}
