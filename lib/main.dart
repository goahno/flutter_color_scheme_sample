import 'package:color_scheme_sample/color_settings_notifier.dart';
import 'package:color_scheme_sample/home_screen.dart';
import 'package:color_scheme_sample/theme_mode_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ColorSettings()),
        ValueListenableProvider<ThemeMode>.value(value: themeModeNotifier),
      ],
      builder: (context, child) {
        final colorSchemes = context.select(
          (ColorSettings notifier) => notifier.colorSchemes,
        );
        final themeMode = context.watch<ThemeMode>();

        return MaterialApp(
          title: 'ColorScheme sample',
          theme: ThemeData(colorScheme: colorSchemes.light),
          darkTheme: ThemeData(colorScheme: colorSchemes.dark),
          themeMode: themeMode,
          home: HomeScreen(),
        );
      },
    );
  }
}
