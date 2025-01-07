import 'dart:io';
import 'package:favorite_place/models/place..dart';
import 'package:riverpod/riverpod.dart';

class UserPlactNotifier extends StateNotifier<List<Place>> {
  UserPlactNotifier() : super(const []);
  void addPlace(String title, File image, PlaceLocation placeLocation) {
    final newPlace =
        Place(title: title, image: image, placeLocation: placeLocation);
    state = [...state, newPlace];
  }
}

final UserPlaceProviders =
    StateNotifierProvider<UserPlactNotifier, List<Place>>(
  (ref) => UserPlactNotifier(),
);
