import 'package:color_scheme_sample/theme_mode_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_list_screen.dart';
import 'color_settings_screen.dart';
import 'widgets_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.color_lens_outlined),
                selectedIcon: Icon(Icons.color_lens),
                label: Text('Settings'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.list_alt_outlined),
                selectedIcon: Icon(Icons.list_alt),
                label: Text('Color List'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.widgets_outlined),
                selectedIcon: Icon(Icons.widgets),
                label: Text('Widgets'),
              ),
            ],
            trailing: _brightnessButton(),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: const [
                ColorSettingsScreen(),
                ColorListScreen(),
                WidgetsScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _brightnessButton() {
    return Builder(
      builder: (context) {
        final mode = context.watch<ThemeMode>();
        final (icon, nextMode) = switch (mode) {
          ThemeMode.system => (Icons.brightness_auto_outlined, ThemeMode.light),
          ThemeMode.light => (Icons.light_mode_outlined, ThemeMode.dark),
          ThemeMode.dark => (Icons.dark_mode_outlined, ThemeMode.system),
        };
        return IconButton(
          onPressed: () => themeModeNotifier.value = nextMode,
          icon: Icon(icon),
        );
      },
    );
  }
}
