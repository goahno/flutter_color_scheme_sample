import 'dart:ui';

extension ColorExt on Color {
  String toHexString({bool leadingHashSign = true, bool includeAlpha = true}) {
    String valueString =
        toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase();
    if (!includeAlpha) {
      valueString = valueString.substring(2);
    }
    return leadingHashSign ? '#$valueString' : valueString;
  }
}
