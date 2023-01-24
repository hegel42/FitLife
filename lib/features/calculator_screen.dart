import 'package:fitness_app/app/ui_kit/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      body: Center(
        child: Text('Notifications'),
      ),
    );
  }
}
