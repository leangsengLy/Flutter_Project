import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);
  void toggleMealFavoriteState(Meal meal) {
    var mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state = state.where((val) => val.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favoriteProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});


//when we wanna call the function we use like below

// ref.read(FavoriteMealsNotifier.notifier).toggleMealFavoriteState(meal)