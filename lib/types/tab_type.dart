enum TabType { Home, Search, Downloads, Profile }

extension TabExtensions on TabType {
  int get index {
    switch (this) {
      case TabType.Home:
        return 0;
      case TabType.Search:
        return 1;
      case TabType.Downloads:
        return 2;
      case TabType.Profile:
        return 3;
    }
  }
}
