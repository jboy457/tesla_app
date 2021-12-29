import 'package:flutter/material.dart';
import 'package:tesla_app/constants/app_colors.dart';

class AppGradient {
  static const darkGradient = LinearGradient(
      begin: Alignment(6.123234262925839e-17, 1),
      end: Alignment(-1, 6.123234262925839e-17),
      colors: [
        AppColors.secondaryDark,
        AppColors.secondarylight,
      ]);
}
