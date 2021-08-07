import 'package:disney_plus/screens/home_screen.dart';
import 'package:disney_plus/screens/movie/movie_screen.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kHomeScreenRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case kMovieScreenRoute:
        return MaterialPageRoute(
          builder: (_) => MovieScreen(arguments: settings.arguments),
        );
      default:
        var test = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
