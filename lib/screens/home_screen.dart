import 'package:disney_plus/components/category_showcase.dart';
import 'package:disney_plus/components/custom_bottom_navigation_bar.dart';
import 'package:disney_plus/components/highlight_slider.dart';
import 'package:disney_plus/components/movie_list_view.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

const String movieBase = 'assets/images/movies/';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  var _logoOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 21, 32, 1),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          print(innerBoxIsScrolled);
          return [
            SliverAppBar(
              centerTitle: true,
              toolbarHeight: 70,
              backgroundColor: Colors.transparent,
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(kHomeScreenLogo, height: 60),
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.only(top: 5),
          physics: BouncingScrollPhysics(),
          children: [
            HighlightSlider(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CategoryShowcase(),
            ),
            SizedBox(height: 20),
            MovieListView(
              label: 'New to Disney+',
              images: _newToDisneyPlus(),
            ),
            SizedBox(height: 20),
            MovieListView(
              label: 'Recommended For You',
              images: _recommended(),
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
