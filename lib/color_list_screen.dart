import 'package:color_scheme_sample/color_ext.dart';
import 'package:flutter/material.dart';

class ColorListScreen extends StatelessWidget {
  const ColorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final colorItems = [
      _ColorItem('primary', colorScheme.primary),
      _ColorItem('onPrimary', colorScheme.onPrimary),
      _ColorItem('primaryContainer', colorScheme.primaryContainer),
      _ColorItem('onPrimaryContainer', colorScheme.onPrimaryContainer),
      _ColorItem('primaryFixed', colorScheme.primaryFixed),
      _ColorItem('primaryFixedDim', colorScheme.primaryFixedDim),
      _ColorItem('onPrimaryFixed', colorScheme.onPrimaryFixed),
      _ColorItem('onPrimaryFixedVariant', colorScheme.onPrimaryFixedVariant),
      _ColorItem('secondary', colorScheme.secondary),
      _ColorItem('onSecondary', colorScheme.onSecondary),
      _ColorItem('secondaryContainer', colorScheme.secondaryContainer),
      _ColorItem('onSecondaryContainer', colorScheme.onSecondaryContainer),
      _ColorItem('secondaryFixed', colorScheme.secondaryFixed),
      _ColorItem('secondaryFixedDim', colorScheme.secondaryFixedDim),
      _ColorItem('onSecondaryFixed', colorScheme.onSecondaryFixed),
      _ColorItem(
        'onSecondaryFixedVariant',
        colorScheme.onSecondaryFixedVariant,
      ),
      _ColorItem('tertiary', colorScheme.tertiary),
      _ColorItem('onTertiary', colorScheme.onTertiary),
      _ColorItem('tertiaryContainer', colorScheme.tertiaryContainer),
      _ColorItem('onTertiaryContainer', colorScheme.onTertiaryContainer),
      _ColorItem('tertiaryFixed', colorScheme.tertiaryFixed),
      _ColorItem('tertiaryFixedDim', colorScheme.tertiaryFixedDim),
      _ColorItem('onTertiaryFixed', colorScheme.onTertiaryFixed),
      _ColorItem('onTertiaryFixedVariant', colorScheme.onTertiaryFixedVariant),
      _ColorItem('error', colorScheme.error),
      _ColorItem('onError', colorScheme.onError),
      _ColorItem('errorContainer', colorScheme.errorContainer),
      _ColorItem('onErrorContainer', colorScheme.onErrorContainer),
      _ColorItem('outline', colorScheme.outline),
      _ColorItem('outlineVariant', colorScheme.outlineVariant),
      _ColorItem('surface', colorScheme.surface),
      _ColorItem('onSurface', colorScheme.onSurface),
      _ColorItem('surfaceDim', colorScheme.surfaceDim),
      _ColorItem('surfaceBright', colorScheme.surfaceBright),
      _ColorItem('surfaceContainerLowest', colorScheme.surfaceContainerLowest),
      _ColorItem('surfaceContainerLow', colorScheme.surfaceContainerLow),
      _ColorItem('surfaceContainer', colorScheme.surfaceContainer),
      _ColorItem('surfaceContainerHigh', colorScheme.surfaceContainerHigh),
      _ColorItem(
        'surfaceContainerHighest',
        colorScheme.surfaceContainerHighest,
      ),
      _ColorItem('onSurfaceVariant', colorScheme.onSurfaceVariant),
      _ColorItem('inverseSurface', colorScheme.inverseSurface),
      _ColorItem('onInverseSurface', colorScheme.onInverseSurface),
      _ColorItem('inversePrimary', colorScheme.inversePrimary),
      _ColorItem('shadow', colorScheme.shadow),
      _ColorItem('scrim', colorScheme.scrim),
      _ColorItem('surfaceTint', colorScheme.surfaceTint),
    ];

    return ListView.separated(
      padding: EdgeInsets.all(16),
      separatorBuilder: (_, _) => SizedBox(height: 16),
      itemCount: colorItems.length,
      itemBuilder: (context, index) {
        final item = colorItems[index];
        return Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  item.name,
                  style: TextTheme.of(context).titleMedium,
                ),
              ),
              Container(width: 80, height: 24, color: item.color),
              SelectableText(item.color.toHexString()),
            ],
          ),
        );
      },
    );
  }
}

class _ColorItem {
  final String name;
  final Color color;

  _ColorItem(this.name, this.color);
}
