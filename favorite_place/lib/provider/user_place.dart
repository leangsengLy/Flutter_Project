import 'dart:io';
import 'package:favorite_place/models/place..dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';
import 'package:riverpod/riverpod.dart';

Future<Database> getDatabase() async {
  final dbPath = await sql.getDatabasesPath();
  final db = await sql.openDatabase(
    path.join(dbPath, 'places.db'),
    onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE user_places(id TEXT PRIMARY KEY,title TEXT,image TEXT,lat REAL,lng REAL,address TEXT)');
    },
    version: 1,
  );
  return db;
}

class UserPlactNotifier extends StateNotifier<List<Place>> {
  Future<void> loadPlaces() async {
    final db = await getDatabase();
    final data = await db.query('user_places');
    final places = data
        .map(
          (row) => Place(
            id: row['id'] as String,
            title: row['title'] as String,
            image: File(row['image'] as String),
            placeLocation: PlaceLocation(
              latitude: row['lat'] as double,
              longitude: row['lng'] as double,
              address: row['address'] as String,
            ),
          ),
        )
        .toList();
    state = places;
  }

  UserPlactNotifier() : super(const []);
  void addPlace(String title, File image, PlaceLocation placeLocation) async {
    final appDir = await syspaths.getApplicationDocumentsDirectory();
    final filename = path.basename(image.path);
    final copyImage = await image.copy('${appDir.path}/$filename');
    final newPlace =
        Place(title: title, image: copyImage, placeLocation: placeLocation);
    final db = await getDatabase();
    db.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
      'lat': newPlace.placeLocation.latitude,
      'lng': newPlace.placeLocation.longitude,
      'address': newPlace.placeLocation.address,
    });
    state = [...state, newPlace];
  }
}

final UserPlaceProviders =
    StateNotifierProvider<UserPlactNotifier, List<Place>>(
  (ref) => UserPlactNotifier(),
);
