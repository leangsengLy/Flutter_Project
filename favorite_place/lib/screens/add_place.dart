import 'dart:io';

import 'package:favorite_place/models/place..dart';
import 'package:favorite_place/provider/user_place.dart';
import 'package:favorite_place/widget/location_input.dart';
import 'package:favorite_place/widget/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});
  @override
  ConsumerState<AddPlaceScreen> createState() {
    return AddPlaceScreenState();
  }
}

class AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File? fileSelected;
  PlaceLocation? selectLocation;
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  void onSelectedLocation(PlaceLocation placeLocation) {
    setState(() {
      selectLocation = placeLocation;
    });
  }

  void onSavePlace() {
    final enterTitle = _titleController.text;
    if (enterTitle.isEmpty || fileSelected == null || selectLocation == null) {
      return;
    }
    ref.read(UserPlaceProviders.notifier).addPlace(
          enterTitle,
          fileSelected!,
          selectLocation!,
        );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: _titleController,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            ImageInput(onSelectImage: (image) {
              fileSelected = image;
            }),
            const SizedBox(height: 16),
            LocationInput(
              onSelectedLocation: (data) {
                onSelectedLocation(data);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              onPressed: onSavePlace,
              label: const Text("Add Place"),
            )
          ],
        ),
      ),
    );
  }
}
