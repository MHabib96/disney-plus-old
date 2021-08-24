import 'package:disney_plus/screens/downloads/downloads_screen.dart';
import 'package:disney_plus/screens/home/home_screen.dart';
import 'package:disney_plus/screens/profile/profile_screen.dart';
import 'package:disney_plus/screens/search/search_screen.dart';
import 'package:disney_plus/types/tab_type.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final TabType tabType;

  TabNavigator({this.navigatorKey, this.tabType});

  @override
  Widget build(BuildContext context) {
    Widget child;

    switch (tabType) {
      case TabType.Home:
        child = HomeScreen();
        break;
      case TabType.Search:
        child = SearchScreen();
        break;
      case TabType.Downloads:
        child = DownloadsScreen();
        break;
      case TabType.Profile:
        child = ProfileScreen();
        break;
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
