import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_colors.dart';

class CategoryButton extends StatelessWidget {
  final String category;
  final VoidCallback onPressed;

  const CategoryButton({
    super.key,
    required this.category,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: AppColors.categoryColors[category],
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: onPressed,
      child: Text(category, style: TextStyles.buttonText),
    );
  }
}
