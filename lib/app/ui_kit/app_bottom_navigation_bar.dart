import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Main'),
        BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_sharp), label: 'Performance'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_add), label: 'Notification'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Profile'),
      ],
      backgroundColor: Colors.redAccent,
    );
  }
}
