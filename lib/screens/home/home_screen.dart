import 'package:disney_plus/components/movie_list_view.dart';
import 'package:disney_plus/screens/home/category_showcase.dart';
import 'package:disney_plus/screens/home/highlight_slider.dart';
import 'package:disney_plus/screens/home/sliver_home_app_bar.dart';
import 'package:disney_plus/types/category_type.dart';
import 'package:disney_plus/utilities/globals.dart' as globals;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    globals.homeScrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: globals.homeScrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverPersistentHeader(
            delegate: SliverHomeAppBar(minExtent: 90, maxExtent: 90, topPadding: 10),
          ),
        ];
      },
      body: ListView(
        padding: EdgeInsets.only(top: 5),
        physics: BouncingScrollPhysics(),
        children: [
          HighlightSlider(
            movies: globals.movieCollection.getWithHighlights(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CategoryShowcase(),
          ),
          SizedBox(height: 20),
          MovieListView(
            label: 'New to Disney+',
            movies: globals.movieCollection.getByCategory(CategoryType.Marvel),
          ),
        ],
      ),
    );
  }
}
