import 'package:favorite_place/models/place..dart';
import 'package:riverpod/riverpod.dart';

class UserPlactNotifier extends StateNotifier<List<Place>> {
  UserPlactNotifier() : super(const []);
  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [...state, newPlace];
  }
}

final UserPlaceProviders =
    StateNotifierProvider<UserPlactNotifier, List<Place>>(
  (ref) => UserPlactNotifier(),
);
