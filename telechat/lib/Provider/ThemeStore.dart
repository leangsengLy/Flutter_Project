import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeStore extends StateNotifier<bool> {
  ThemeStore() : super(false);
  void setThemeDarkMode(bool theme) {
    state = !theme;
  }
}

final useThemeProvider = StateNotifierProvider<ThemeStore, bool>((ref) {
  return ThemeStore();
});
