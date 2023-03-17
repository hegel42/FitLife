import 'package:auto_route/auto_route.dart';
import 'package:fitness_app/app/router/app_router.dart';
import 'package:fitness_app/app/ui_kit/models/color_palette.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        EverydayPictureRoute(),
        CalculatorRoute(),
        DietRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: ColorPallete.accent.withOpacity(0.2),
              highlightColor: ColorPallete.accent.withOpacity(0.2),
              splashFactory: NoSplash.splashFactory,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              enableFeedback: true,
              elevation: 10,
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) => tabsRouter.setActiveIndex(value),
              selectedItemColor: ColorPallete.accent,
              unselectedItemColor: ColorPallete.primary,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.sports_gymnastics),
                  label: 'Main',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank),
                  label: 'Diet',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: 'Calculator',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_off_outlined),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
