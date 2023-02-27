import 'package:fitness_app/app/ui_kit/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      body: Center(
        child: Text('Performance Page'),
      ),
    );
  }
}
