import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  onBackground: const Color.fromARGB(255, 56, 49, 66),
);
final theme = ThemeData().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 56, 49, 66),
    colorScheme: colorScheme,
    textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
        titleSmall: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
        titleMedium: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
        titleLarge: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold)));
void main() {
  runApp(MaterialApp());
}
