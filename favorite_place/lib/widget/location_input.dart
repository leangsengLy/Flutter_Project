import 'dart:convert';
import 'dart:math';

import 'package:favorite_place/models/place..dart';
import 'package:favorite_place/screens/map.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key, required this.onSelectedLocation});
  final void Function(PlaceLocation placeLocation) onSelectedLocation;
  @override
  State<LocationInput> createState() {
    return LocationInputState();
  }
}

class LocationInputState extends State<LocationInput> {
  PlaceLocation? pickedLocation;
  var isGettingLocation = false;
  String get locationImage {
    if (pickedLocation == null) {
      return '';
    }
    final lat = pickedLocation!.latitude;
    final longati = pickedLocation!.longitude;
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$longati=&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:S%7C$lat,$longati&key=AIzaSyD38baHAlNdY8_Kp1vEfTE038134vQ3_LE';
  }

  Future<void> savePlace(double latitude, double longitude) async {
    final Url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=AIzaSyD38baHAlNdY8_Kp1vEfTE038134vQ3_LE');
    final response = await http.get(Url);
    final resData = json.decode(response.body);
    final address = resData['results'][0]['formatted_address'];
    setState(() {
      pickedLocation = PlaceLocation(
        latitude: latitude,
        longitude: longitude,
        address: address,
      );
      widget.onSelectedLocation(pickedLocation!);
    });
  }

  void onSelectMap() async {
    final pickLocation = await Navigator.of(context)
        .push<LatLng>(MaterialPageRoute(builder: (ctx) => const MapScreen()));
    if (pickLocation == null) return;
    savePlace(pickLocation.latitude, pickLocation.longitude);
  }

  void getCurrentLocation() async {
    Location location = new Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData _locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    setState(() {
      isGettingLocation = true;
    });
    _locationData = await location.getLocation();
    final lat = _locationData.latitude;
    final lon = _locationData.longitude;
    if (lat == null || lon == null) {
      return;
    }
    savePlace(lat, lon);
    isGettingLocation = false;
    // final Url = Uri.parse(
    //     'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lon&key=AIzaSyD38baHAlNdY8_Kp1vEfTE038134vQ3_LE');
    // final response = await http.get(Url);
    // final resData = json.decode(response.body);
    // final address = resData['results'][0]['formatted_address'];
    // setState(() {
    //   pickedLocation = PlaceLocation(
    //     latitude: lat,
    //     longitude: lon,
    //     address: address,
    //   );
    //   widget.onSelectedLocation(pickedLocation!);
    // });
  }

  @override
  Widget build(BuildContext context) {
    Widget previewContent = Text(
      'No Location chosen',
      style: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
      ),
      textAlign: TextAlign.center,
    );
    if (pickedLocation != null) {
      previewContent = Image.network(
        locationImage,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    }
    if (isGettingLocation) {
      previewContent = const CircularProgressIndicator();
    }
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 170,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: previewContent,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              icon: const Icon(Icons.map),
              onPressed: () {
                getCurrentLocation();
              },
              label: const Text("Get Current Location"),
            ),
            TextButton.icon(
              icon: const Icon(Icons.location_on),
              onPressed: onSelectMap,
              label: const Text("Select on Map"),
            )
          ],
        )
      ],
    );
  }
}
