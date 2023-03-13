import 'package:flutter/material.dart';

import 'package:fitness_app/app/router/app_router.dart';
import 'package:fitness_app/app/ui_kit/models/color_palette.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fitness App',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPallete.backGround,
        bottomAppBarColor: ColorPallete.silver,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPallete.primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
