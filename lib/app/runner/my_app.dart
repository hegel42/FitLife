import 'package:fitness_app/app/ui_kit/models/color_palette.dart';
import 'package:fitness_app/features/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPallete.backGround,
        bottomAppBarColor: ColorPallete.silver,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPallete.primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
