import 'package:disney_plus/collections/movie_collection.dart';
import 'package:disney_plus/components/category_showcase.dart';
import 'package:disney_plus/components/custom_bottom_navigation_bar.dart';
import 'package:disney_plus/components/highlight_slider.dart';
import 'package:disney_plus/components/movie_list_view.dart';
import 'package:disney_plus/components/sliver_home_app_bar.dart';
import 'package:disney_plus/types/category_types.dart';
import 'package:flutter/material.dart';

const String movieBase = 'assets/images/movies/';

class HomeScreen extends StatelessWidget {
  var _movieCollection = MovieCollection();

  List<String> _newToDisneyPlus() {
    return [
      "${movieBase}chip_n_dale.PNG",
      "${movieBase}black_widow.PNG",
      "${movieBase}turning_the_tables.PNG",
      "${movieBase}summer_of_soul.PNG",
      "${movieBase}high_school_musical.PNG",
      "${movieBase}mickey_mouse.PNG",
    ];
  }

  List<String> _recommended() {
    return [
      "${movieBase}avengers_aou.PNG",
      "${movieBase}runaways.PNG",
      "${movieBase}hamilton.PNG",
      "${movieBase}girl_vs_monster.PNG",
      "${movieBase}blackish.PNG",
      "${movieBase}boy_meets_world.PNG",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 21, 32, 1),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverPersistentHeader(
              delegate: SliverHomeAppBar(
                minExtent: 90,
                maxExtent: 90,
                topPadding: 10,
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.only(top: 5),
          physics: BouncingScrollPhysics(),
          children: [
            HighlightSlider(
              movies: _movieCollection.getWithHighlights(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CategoryShowcase(),
            ),
            SizedBox(height: 20),
            MovieListView(
              label: 'New to Disney+',
              movies: _movieCollection.getByCategory(CategoryType.Marvel),
            ),
            SizedBox(height: 20),
            MovieListView(
              label: 'Recommended For You',
              movies: _movieCollection.getRandom(3),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (int) => print('tapped'),
      ),
    );
  }
}
