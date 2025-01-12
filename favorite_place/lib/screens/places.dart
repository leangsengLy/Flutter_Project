import 'package:favorite_place/provider/user_place.dart';
import 'package:favorite_place/screens/add_place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_place/widget/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends ConsumerStatefulWidget {
  const PlacesScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return PlacesScreenState();
  }
}

class PlacesScreenState extends ConsumerState<PlacesScreen> {
  late Future<void> placesFuture;
  @override
  void initState() {
    super.initState();
    placesFuture = ref.read(UserPlaceProviders.notifier).loadPlaces();
  }

  void onClickAddNewPlace(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const AddPlaceScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final listPlace = ref.watch(UserPlaceProviders);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Place'),
        actions: [
          IconButton(
            onPressed: () {
              onClickAddNewPlace(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: placesFuture,
          builder: (context, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : PlacesList(
                      places: listPlace,
                    ),
        ),
      ),
    );
  }
}
