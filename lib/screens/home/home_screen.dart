import 'package:disney_plus/components/category_showcase.dart';
import 'package:disney_plus/components/custom_bottom_navigation_bar.dart';
import 'package:disney_plus/components/highlight_slider.dart';
import 'package:disney_plus/components/movie_list_view.dart';
import 'package:disney_plus/components/sliver_home_app_bar.dart';
import 'package:disney_plus/types/category_type.dart';
import 'package:disney_plus/utilities/globals.dart' as globals;
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
            SizedBox(height: 20),
            // MovieListView(
            //   label: 'Recommended For You',
            //   movies: globals.movieCollection.getRandom(3),
            // ),
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
