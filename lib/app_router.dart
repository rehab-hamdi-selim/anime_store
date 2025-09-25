import 'package:anime_store/features/details/presentation/view/details_screen.dart';
import 'package:anime_store/features/home/presentation/view/home_screen.dart';
import 'package:anime_store/features/layout/presentation/view/home_layout.dart';
import 'package:anime_store/features/upgrade/presentation/view/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';
import 'core/constants/strings.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // charactersScreen is a String constant defined in the Strings class.
      case homeLayoutScreen:
        return MaterialPageRoute(builder: (_) => HomeLayout());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case charactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
      case upgradePlanScreen:
        return MaterialPageRoute(builder: (_) => UpgradePlanScreen());
    }
    return null;
  }
}
