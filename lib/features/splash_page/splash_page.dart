import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fitness_app/app/router/app_router.dart';
import 'package:fitness_app/app/runner/init_widget.dart';
import 'package:fitness_app/app/ui_kit/models/color_palette.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp(
        title: 'Fitness App',
        theme: ThemeData(
          scaffoldBackgroundColor: ColorPallete.backGround,
          bottomAppBarColor: ColorPallete.silver,
        ),
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Colors.red,
          splash: Icons.code,
          animationDuration: const Duration(seconds: 1),
          splashTransition: SplashTransition.slideTransition,
          nextScreen: MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ),
      ),
    );
  }
}
