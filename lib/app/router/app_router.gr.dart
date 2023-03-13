// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ExerciseRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ExercisePage(),
      );
    },
    CalculatorRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CalculatorPage(),
      );
    },
    DietRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DietPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            RouteConfig(
              ExerciseRoute.name,
              path: 'exercise-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              CalculatorRoute.name,
              path: 'calculator-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              DietRoute.name,
              path: 'diet-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ExercisePage]
class ExerciseRoute extends PageRouteInfo<void> {
  const ExerciseRoute()
      : super(
          ExerciseRoute.name,
          path: 'exercise-page',
        );

  static const String name = 'ExerciseRoute';
}

/// generated route for
/// [CalculatorPage]
class CalculatorRoute extends PageRouteInfo<void> {
  const CalculatorRoute()
      : super(
          CalculatorRoute.name,
          path: 'calculator-page',
        );

  static const String name = 'CalculatorRoute';
}

/// generated route for
/// [DietPage]
class DietRoute extends PageRouteInfo<void> {
  const DietRoute()
      : super(
          DietRoute.name,
          path: 'diet-page',
        );

  static const String name = 'DietRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
