
import 'package:flutter/material.dart';

import 'app_colors.dart';

/// All app-wide text styles, matching Flutter’s TextTheme slots.
class AppTextStyles {
  // Display (largest) – for very prominent text
  static const TextStyle displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.bold,
    height: 1.12,
  );

  /// Card/dialog titles.
  static TextStyle cardstyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
    Color color = AppColors.darkBackground,
    double height = 1.5,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: height,
      );
}
