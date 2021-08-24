import 'package:disney_plus/components/movie_tabs/tabs/details_tab.dart';
import 'package:disney_plus/components/movie_tabs/tabs/extras_tab.dart';
import 'package:disney_plus/components/movie_tabs/tabs/suggested_tab.dart';
import 'package:flutter/material.dart';

enum _TabType { Suggested, Extras, Details }

class MovieTabs extends StatefulWidget {
  @override
  _MovieTabsState createState() => _MovieTabsState();
}

class _MovieTabsState extends State<MovieTabs> {
  _TabType _selectedTab = _TabType.Suggested;

  void _onTap(_TabType selectedTab) => setState(() => _selectedTab = selectedTab);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _TabButton(
                label: 'SUGGESTED',
                tab: _TabType.Suggested,
                selectedTab: _selectedTab,
                onTap: () => _onTap(_TabType.Suggested),
              ),
            ),
            Expanded(
              child: _TabButton(
                label: 'EXTRAS',
                tab: _TabType.Extras,
                selectedTab: _selectedTab,
                onTap: () => _onTap(_TabType.Extras),
              ),
            ),
            Expanded(
              child: _TabButton(
                label: 'DETAILS',
                tab: _TabType.Details,
                selectedTab: _selectedTab,
                onTap: () => _onTap(_TabType.Details),
              ),
            ),
          ],
        ),
        Divider(
          height: 0,
          color: Colors.white,
        ),
        _MovieTabNavigator(selectedTab: _selectedTab),
      ],
    );
  }
}

class _TabButton extends StatelessWidget {
  final String label;
  final _TabType tab;
  final _TabType selectedTab;
  final Function onTap;

  _TabButton({this.label, this.tab, this.selectedTab, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 5),
          Opacity(
            opacity: tab == selectedTab ? 1 : 0,
            child: Container(
              height: 5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieTabNavigator extends StatelessWidget {
  final _TabType selectedTab;

  _MovieTabNavigator({this.selectedTab});

  @override
  Widget build(BuildContext context) {
    Widget child;

    switch (selectedTab) {
      case _TabType.Suggested:
        child = SuggestedTab();
        break;
      case _TabType.Extras:
        child = ExtrasTab();
        break;
      case _TabType.Details:
        child = DetailsTab();
        break;
    }

    return child;
  }
}
