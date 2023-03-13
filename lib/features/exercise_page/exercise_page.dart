import 'package:fitness_app/app/ui_kit/app_bottom_navigation_bar.dart';
import 'package:fitness_app/app/ui_kit/components/custom_app_bar.dart';

import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Exercises',
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  InteractiveViewer(
                    boundaryMargin: const EdgeInsets.all(40.0),
                    minScale: 0.1,
                    maxScale: 1.6,
                    child: Image.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                      scale: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
