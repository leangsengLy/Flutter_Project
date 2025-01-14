import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:telechat/Provider/ThemeStore.dart';
import 'package:telechat/Screen/loginscreen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: AppProject(),
    ),
  );
}

class AppProject extends ConsumerWidget {
  const AppProject({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(useThemeProvider);
    return MaterialApp(
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(118, 172, 172, 172),
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
      ),
      home: const Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
