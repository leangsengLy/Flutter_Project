import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeStore extends StateNotifier<bool> {
  ThemeStore() : super(true);
  void setThemeDarkMode(bool theme) {
    state = !theme;
  }
}

final useThemeProvider = StateNotifierProvider<ThemeStore, bool>((ref) {
  return ThemeStore();
});
