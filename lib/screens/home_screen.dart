import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_colors.dart';
import '../widgets/category_button.dart';
import 'fact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _navigateToCategory(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FactScreen(category: category)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lightbulb, color: Colors.white, size: 28),
            const SizedBox(width: 10),
            Text('¿Sabías qué?', style: TextStyles.appBarTitle),
          ],
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 8,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Elige una categoría:', style: TextStyles.categoryTitle),
              const SizedBox(height: 30),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CategoryButton(
                    category: 'Ciencia',
                    onPressed: () => _navigateToCategory(context, 'Ciencia'),
                  ),
                  CategoryButton(
                    category: 'Historia',
                    onPressed: () => _navigateToCategory(context, 'Historia'),
                  ),
                  CategoryButton(
                    category: 'Tecnología',
                    onPressed: () => _navigateToCategory(context, 'Tecnología'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
