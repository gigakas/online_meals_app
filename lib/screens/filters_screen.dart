import 'package:flutter/material.dart';
// import 'package:online_meals_app/screens/tabs.dart';
// import 'package:online_meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _gluttenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegeterianFreeFilterSet = false;
  var _veganFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),

      // this replace the screen no add the screen to the stack
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => TabScreen()));
      //     }
      //   },
      // ),
      body: Column(
        children: [
          SwitchListTile(
            value: _gluttenFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _gluttenFreeFilterSet = isChecked;
              });
            },
            title: const Text('Gluten-free'),
            subtitle: Text(
              'Only include gluten-free meals',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
            },
            title: const Text('Lactose-free'),
            subtitle: Text(
              'Only Lactose gluten-free meals',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _vegeterianFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _vegeterianFreeFilterSet = isChecked;
              });
            },
            title: const Text('Vegeterian'),
            subtitle: Text(
              'Only include vegeterian meals',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _veganFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _veganFreeFilterSet = isChecked;
              });
            },
            title: const Text('Vegan'),
            subtitle: Text(
              'Only include vegan meals',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
