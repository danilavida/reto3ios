import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Colors.blue.shade700;
  static Color cardColor = Colors.white;

  static LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF2196F3), Color(0xFF1976D2)],
  );

  static Map<String, Color> categoryColors = {
    'Ciencia': Colors.purple.shade300,
    'Historia': Colors.amber.shade300,
    'Tecnología': Colors.teal.shade300,
  };
}
