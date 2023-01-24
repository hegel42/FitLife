import 'package:fitness_app/app/ui_kit/app_bottom_navigation_bar.dart';
import 'package:fitness_app/app/ui_kit/components/app_text_field.dart';
import 'package:fitness_app/app/ui_kit/components/buttons/app_buttons.dart';
import 'package:fitness_app/app/ui_kit/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
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
                  const SizedBox(height: 100),
                  AppButton.primary(
                    context: context,
                    label: 'Primary',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 100),
                  AppButton.secondary(
                    context: context,
                    label: 'secondary',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 100),
                  AppButton.outlined(
                    context: context,
                    label: 'Outlined',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 100),
                  AppTextField(
                    labelText: 'AAA',
                  ),
                  const SizedBox(height: 100),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text('ss'),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
