import 'package:favorite_place/screens/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
);
final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 56, 49, 66),
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
  ),
);
void main() {
  runApp(
    const ProviderScope(
      child: AppProject(),
    ),
  );
}

class AppProject extends StatelessWidget {
  const AppProject({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: "Grade place",
      home: const Scaffold(
        body: PlacesScreen(),
      ),
    );
  }
}
