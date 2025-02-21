import 'package:flutter/material.dart';
import 'package:reto3ios/constants/text_colors.dart';
import '../constants/app_colors.dart';
import '../data/facts_repository.dart';

class FactScreen extends StatefulWidget {
  final String category;
  const FactScreen({super.key, required this.category});

  @override
  State<FactScreen> createState() => _FactScreenState();
}

class _FactScreenState extends State<FactScreen> {
  int _currentFactIndex = 0;
  late List<String> _facts;

  @override
  void initState() {
    super.initState();
    _facts = FactsRepository.getFacts(widget.category);
  }

  void _nextFact() {
    setState(() {
      _currentFactIndex = (_currentFactIndex + 1) % _facts.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category, style: TextStyles.appBarTitle),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 8,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      _facts[_currentFactIndex],
                      textAlign: TextAlign.center,
                      style: TextStyles.factText,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: _nextFact,
                  icon: const Icon(Icons.refresh, color: Colors.white),
                  label: const Text(
                    'Siguiente dato',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
