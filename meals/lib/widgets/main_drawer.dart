import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectFilter});
  final void Function(String selectType) onSelectFilter;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.onPrimary,
                Theme.of(context).colorScheme.onPrimary.withOpacity(0.55)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 20),
                Text(
                  'Hello world!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.restaurant),
            title: const Text(
              'Meals',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              onSelectFilter('meals');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Filter',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              onSelectFilter('filter');
            },
          ),
        ],
      ),
    );
  }
}
