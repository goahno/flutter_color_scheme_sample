import 'package:color_scheme_sample/color_settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

class ColorSettingsScreen extends StatefulWidget {
  const ColorSettingsScreen({super.key});

  @override
  State<ColorSettingsScreen> createState() => _ColorSettingsScreenState();
}

class _ColorSettingsScreenState extends State<ColorSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final settings = context.watch<ColorSettings>();

    return Scaffold(
      appBar: AppBar(title: const Text('Color Scheme Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Use color seed'),
            value: settings.useSeedColor,
            onChanged:
                (value) => context.read<ColorSettings>().useSeedColor = value,
          ),
          const Divider(height: 32),
          _seedColorTile(settings),
          ..._colorSettingTiles(settings),
        ],
      ),
    );
  }

  Widget _seedColorTile(ColorSettings settings) {
    return _listTile(
      'Seed color',
      settings.seedColor,
      (color) => context.read<ColorSettings>().updateSeedColor(color),
      enabled: settings.useSeedColor,
    );
  }

  List<Widget> _colorSettingTiles(ColorSettings settings) {
    final schemes = settings.colorSchemes;
    final lightScheme = schemes.light;

    final enabled = !settings.useSeedColor;
    return [
      _listTile(
        'Primary',
        lightScheme.primary,
        (color) => _updateColorSchemes(schemes.copyWith(primary: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Primary',
        lightScheme.onPrimary,
        (color) => _updateColorSchemes(schemes.copyWith(onPrimary: color)),
        enabled: enabled,
      ),
      _listTile(
        'Primary Container',
        lightScheme.primaryContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(primaryContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Primary Container',
        lightScheme.onPrimaryContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onPrimaryContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'Primary Fixed',
        lightScheme.primaryFixed,
        (color) => _updateColorSchemes(schemes.copyWith(primaryFixed: color)),
        enabled: enabled,
      ),
      _listTile(
        'Primary Fixed Dim',
        lightScheme.primaryFixedDim,
        (color) =>
            _updateColorSchemes(schemes.copyWith(primaryFixedDim: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Primary Fixed',
        lightScheme.onPrimaryFixed,
        (color) => _updateColorSchemes(schemes.copyWith(onPrimaryFixed: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Primary Fixed Variant',
        lightScheme.onPrimaryFixedVariant,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onPrimaryFixedVariant: color)),
        enabled: enabled,
      ),
      _listTile(
        'Secondary',
        lightScheme.secondary,
        (color) => _updateColorSchemes(schemes.copyWith(secondary: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Secondary',
        lightScheme.onSecondary,
        (color) => _updateColorSchemes(schemes.copyWith(onSecondary: color)),
        enabled: enabled,
      ),
      _listTile(
        'Secondary Container',
        lightScheme.secondaryContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(secondaryContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Secondary Container',
        lightScheme.onSecondaryContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onSecondaryContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'Secondary Fixed',
        lightScheme.secondaryFixed,
        (color) => _updateColorSchemes(schemes.copyWith(secondaryFixed: color)),
        enabled: enabled,
      ),
      _listTile(
        'Secondary Fixed Dim',
        lightScheme.secondaryFixedDim,
        (color) =>
            _updateColorSchemes(schemes.copyWith(secondaryFixedDim: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Secondary Fixed',
        lightScheme.onSecondaryFixed,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onSecondaryFixed: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Secondary Fixed Variant',
        lightScheme.onSecondaryFixedVariant,
        (color) => _updateColorSchemes(
          schemes.copyWith(onSecondaryFixedVariant: color),
        ),
        enabled: enabled,
      ),
      _listTile(
        'Tertiary',
        lightScheme.tertiary,
        (color) => _updateColorSchemes(schemes.copyWith(tertiary: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Tertiary',
        lightScheme.onTertiary,
        (color) => _updateColorSchemes(schemes.copyWith(onTertiary: color)),
        enabled: enabled,
      ),
      _listTile(
        'Tertiary Container',
        lightScheme.tertiaryContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(tertiaryContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Tertiary Container',
        lightScheme.onTertiaryContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onTertiaryContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'Tertiary Fixed',
        lightScheme.tertiaryFixed,
        (color) => _updateColorSchemes(schemes.copyWith(tertiaryFixed: color)),
        enabled: enabled,
      ),
      _listTile(
        'Tertiary Fixed Dim',
        lightScheme.tertiaryFixedDim,
        (color) =>
            _updateColorSchemes(schemes.copyWith(tertiaryFixedDim: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Tertiary Fixed',
        lightScheme.onTertiaryFixed,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onTertiaryFixed: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Tertiary Fixed Variant',
        lightScheme.onTertiaryFixedVariant,
        (color) => _updateColorSchemes(
          schemes.copyWith(onTertiaryFixedVariant: color),
        ),
        enabled: enabled,
      ),
      _listTile(
        'Error',
        lightScheme.error,
        (color) => _updateColorSchemes(schemes.copyWith(error: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Error',
        lightScheme.onError,
        (color) => _updateColorSchemes(schemes.copyWith(onError: color)),
        enabled: enabled,
      ),
      _listTile(
        'Error Container',
        lightScheme.errorContainer,
        (color) => _updateColorSchemes(schemes.copyWith(errorContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Error Container',
        lightScheme.onErrorContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onErrorContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface',
        lightScheme.surface,
        (color) => _updateColorSchemes(schemes.copyWith(surface: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Surface',
        lightScheme.onSurface,
        (color) => _updateColorSchemes(schemes.copyWith(onSurface: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Dim',
        lightScheme.surfaceDim,
        (color) => _updateColorSchemes(schemes.copyWith(surfaceDim: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Bright',
        lightScheme.surfaceBright,
        (color) => _updateColorSchemes(schemes.copyWith(surfaceBright: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Container Lowest',
        lightScheme.surfaceContainerLowest,
        (color) => _updateColorSchemes(
          schemes.copyWith(surfaceContainerLowest: color),
        ),
        enabled: enabled,
      ),
      _listTile(
        'Surface Container Low',
        lightScheme.surfaceContainerLow,
        (color) =>
            _updateColorSchemes(schemes.copyWith(surfaceContainerLow: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Container',
        lightScheme.surfaceContainer,
        (color) =>
            _updateColorSchemes(schemes.copyWith(surfaceContainer: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Container High',
        lightScheme.surfaceContainerHigh,
        (color) =>
            _updateColorSchemes(schemes.copyWith(surfaceContainerHigh: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Container Highest',
        lightScheme.surfaceContainerHighest,
        (color) => _updateColorSchemes(
          schemes.copyWith(surfaceContainerHighest: color),
        ),
        enabled: enabled,
      ),
      _listTile(
        'On Surface Variant',
        lightScheme.onSurfaceVariant,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onSurfaceVariant: color)),
        enabled: enabled,
      ),
      _listTile(
        'Outline',
        lightScheme.outline,
        (color) => _updateColorSchemes(schemes.copyWith(outline: color)),
        enabled: enabled,
      ),
      _listTile(
        'Outline Variant',
        lightScheme.outlineVariant,
        (color) => _updateColorSchemes(schemes.copyWith(outlineVariant: color)),
        enabled: enabled,
      ),
      _listTile(
        'Shadow',
        lightScheme.shadow,
        (color) => _updateColorSchemes(schemes.copyWith(shadow: color)),
        enabled: enabled,
      ),
      _listTile(
        'Scrim',
        lightScheme.scrim,
        (color) => _updateColorSchemes(schemes.copyWith(scrim: color)),
        enabled: enabled,
      ),
      _listTile(
        'Inverse Surface',
        lightScheme.inverseSurface,
        (color) => _updateColorSchemes(schemes.copyWith(inverseSurface: color)),
        enabled: enabled,
      ),
      _listTile(
        'On Inverse Surface',
        lightScheme.onInverseSurface,
        (color) =>
            _updateColorSchemes(schemes.copyWith(onInverseSurface: color)),
        enabled: enabled,
      ),
      _listTile(
        'Inverse Primary',
        lightScheme.inversePrimary,
        (color) => _updateColorSchemes(schemes.copyWith(inversePrimary: color)),
        enabled: enabled,
      ),
      _listTile(
        'Surface Tint',
        lightScheme.surfaceTint,
        (color) => _updateColorSchemes(schemes.copyWith(surfaceTint: color)),
        enabled: enabled,
      ),
    ];
  }

  void _updateColorSchemes(ColorSchemes schemes) {
    context.read<ColorSettings>().updateColorSchemes(schemes);
  }

  ListTile _listTile(
    String title,
    Color color,
    ValueChanged<Color> onChanged, {
    bool enabled = true,
  }) {
    return ListTile(
      enabled: enabled,
      title: Text(title),
      trailing: CircleAvatar(backgroundColor: color),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => _pickColor(color, (value) => onChanged(value)),
        );
      },
    );
  }

  AlertDialog _pickColor(Color color, ValueChanged<Color> onColorChanged) {
    Color pickerColor = color;

    return AlertDialog(
      title: Text('Pick a color'),
      content: SingleChildScrollView(
        child: ColorPicker(
          pickerColor: color,
          onColorChanged: (value) => pickerColor = value,
          hexInputBar: true,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onColorChanged(pickerColor);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
