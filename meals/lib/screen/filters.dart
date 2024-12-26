import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/screen/tabscreen.dart';
import 'package:meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFreeFilterSet = false;
  var _veganFilterSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: MainDrawer(
        onSelectFilter: (type) {
          if (type == 'filter') {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const FilterScreen()),
            );
          } else {
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const TabsScreen()),
            );
          }
        },
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _glutenFreeFilterSet = isCheck;
              });
            },
            title: const Text(
              'Gluren-free',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Only include gluten-free meals.',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _lactoseFreeFilterSet = isCheck;
              });
            },
            title: const Text(
              'Lactose-free',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Only include Lactose-free meals.',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _vegetarianFreeFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _vegetarianFreeFilterSet = isCheck;
              });
            },
            title: const Text(
              'vegetarian-free',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Only include vegetarian-free meals.',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (isCheck) {
              setState(() {
                _veganFilterSet = isCheck;
              });
            },
            title: const Text(
              'Vegen-free',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Only include vegen-free meals.',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          )
        ],
      ),
    );
  }
}
