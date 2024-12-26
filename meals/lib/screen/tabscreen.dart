import 'package:flutter/material.dart';
import 'package:meals/categories.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screen/filters.dart';
import 'package:meals/widgets/main_drawer.dart';
import 'package:meals/widgets/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Meal> listFavoriteMeal = [];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void showMessageFavorite(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void toggleFavoriteMeal(Meal meal) {
    bool isExistedMeal = listFavoriteMeal.contains(meal);
    if (isExistedMeal) {
      setState(() {
        listFavoriteMeal.remove(meal);
        showMessageFavorite("Remove your favorite meals");
      });
    } else {
      setState(() {
        listFavoriteMeal.add(meal);
        showMessageFavorite("add new to your favorite meals");
      });
    }
  }

  void onSelectFilter(String type) {
    Navigator.of(context).pop();
    if (type == 'filter') {
      Navigator.of(context).pop();
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const FilterScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage =
        CategoriesScreen(toggleFavoriteMeal: toggleFavoriteMeal);
    var activePageTitle = 'Categories';
    if (_selectedPageIndex == 1) {
      activePageTitle = 'Your Favorites';
      activePage = MealsScreen(
        title: "",
        onToggleFavoriteMeal: toggleFavoriteMeal,
        meals: listFavoriteMeal,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectFilter: onSelectFilter),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          _selectPage(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Me"),
        ],
      ),
    );
  }
}
