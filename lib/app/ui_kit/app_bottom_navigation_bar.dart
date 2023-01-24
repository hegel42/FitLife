import 'package:fitness_app/app/ui_kit/models/color_palette.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Exercises'),
        BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_sharp), label: 'Calculator'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_add), label: 'Diet'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Profile'),
      ],
      elevation: 6,
      selectedItemColor: ColorPallete.primary,
      unselectedItemColor: ColorPallete.darkGrey,
    );
  }
}
