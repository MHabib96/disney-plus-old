import 'package:disney_plus/components/builders/responsive_base.dart';
import 'package:disney_plus/components/category_showcase.dart';
import 'package:disney_plus/components/custom_bottom_navigation_bar.dart';
import 'package:disney_plus/components/highlight_slider.dart';
import 'package:disney_plus/components/movie_list_view.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

const String movieBase = 'assets/images/movies/';

class HomeScreen extends StatelessWidget {
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
      body: ResponsiveBase(
        builder: (context, details) {
          return ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Image.asset(kHomeScreenLogo),
              ),
              SizedBox(height: 5),
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
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (int) => print('tapped'),
      ),
    );
  }
}
