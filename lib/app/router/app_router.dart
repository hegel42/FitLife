import 'package:auto_route/auto_route.dart';
import 'package:fitness_app/features/calculator_page.dart';
import 'package:fitness_app/features/diet_page.dart';

import 'package:fitness_app/features/exercise_page/exercise_page.dart';
import 'package:fitness_app/features/home_page/home_page.dart';
import 'package:fitness_app/features/profile_screen.dart';
import 'package:fitness_app/features/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(page: HomePage, initial: true, children: [
      AutoRoute(page: ExercisePage),
      AutoRoute(page: CalculatorPage),
      AutoRoute(page: DietPage),
      AutoRoute(page: ProfilePage),
    ]),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
