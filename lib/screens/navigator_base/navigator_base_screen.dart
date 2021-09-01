import 'package:disney_plus/screens/navigator_base/tab_navigator.dart';
import 'package:disney_plus/types/tab_type.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:disney_plus/utilities/globals.dart' as globals;
import 'package:flutter/material.dart';

class NavigatorBaseScreen extends StatefulWidget {
  @override
  _NavigatorBaseScreenState createState() => _NavigatorBaseScreenState();
}

class _NavigatorBaseScreenState extends State<NavigatorBaseScreen> {
  TabType _currentTab = kNavigatorDefaultKey;
  int _currentIndex = kNavigatorDefaultIndex;

  Map<TabType, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabType.Home: GlobalKey<NavigatorState>(),
    TabType.Search: GlobalKey<NavigatorState>(),
    TabType.Downloads: GlobalKey<NavigatorState>(),
    TabType.Profile: GlobalKey<NavigatorState>(),
  };

  void _onSelectedTab(TabType selectedTab) {
    //Scroll to top of home screen when home tab is selected on home route.
    if (selectedTab == _currentTab &&
        selectedTab == TabType.Home &&
        !_navigatorKeys[selectedTab].currentState.canPop()) {
      globals.homeScrollController.animateTo(
        0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
    //Navigate back to tab route when current tab is selected.
    else if (selectedTab == _currentTab) {
      _navigatorKeys[selectedTab].currentState.popUntil((route) => route.isFirst);
    }
    //Update state to newly selected tab screen.
    else {
      setState(() {
        _currentTab = selectedTab;
        _currentIndex = selectedTab.index;
      });
    }
  }

  Widget _buildOffstageNavigator(TabType tabType) {
    return Offstage(
      offstage: _currentTab != tabType,
      child: TabNavigator(
        tabType: tabType,
        navigatorKey: _navigatorKeys[tabType],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await _navigatorKeys[_currentTab].currentState.maybePop(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(54, 69, 79, 0.2),
        body: Stack(
          children: [
            _buildOffstageNavigator(TabType.Home),
            _buildOffstageNavigator(TabType.Search),
            _buildOffstageNavigator(TabType.Downloads),
            _buildOffstageNavigator(TabType.Profile),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          backgroundColor: Color.fromRGBO(54, 69, 79, 0.3),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => _onSelectedTab(TabType.values[index]),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.file_download), label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
