import 'package:auto_route/auto_route.dart';
import 'package:fitness_app/features/calculator_page/ui/calculator_page.dart';
import 'package:fitness_app/features/diet_page/ui/diet_page.dart';
import 'package:fitness_app/features/everyday_picture_page/presentation/ui/everyday_picture_page.dart';

import 'package:fitness_app/features/home_page/home_page.dart';
import 'package:fitness_app/features/profile_page/ui/profile_page.dart';
import 'package:fitness_app/features/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      // initial: true,
    ),
    AutoRoute(
      page: HomePage,
      initial: true,
      children: [
        AutoRoute(
          page: EverydayPicturePage,
          // initial: true,
        ),
        // AutoRoute(
        //   page: ExercisePage,
        //   // initial: true,
        // ),
        AutoRoute(
          page: CalculatorPage,
          // initial: true,
        ),
        AutoRoute(
          page: DietPage,
          // initial: true,
        ),
        AutoRoute(
          page: ProfilePage,
          // initial: true,
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
