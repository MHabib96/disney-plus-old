import 'package:disney_plus/components/builders/responsive_base.dart';
import 'package:disney_plus/components/custom_bottom_navigation_bar.dart';
import 'package:disney_plus/components/movie/movie_buttons.dart';
import 'package:disney_plus/components/movie/movie_details.dart';
import 'package:disney_plus/screens/movie/movie_arguments.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  final MovieArguments arguments;

  MovieScreen({@required this.arguments});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBase(
      builder: (context, screenDetails) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(19, 21, 32, 1),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                child: Image.asset(
                  arguments.movie.selectedImagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kMovieScreenHorizontalPadding,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        arguments.movie.logoImagePath,
                        height: screenDetails.screenSize.height * 0.18,
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: screenDetails.screenSize.height * 0.06,
                      child: MovieButtons(),
                    ),
                    SizedBox(height: 10),
                    MovieDetails(movie: arguments.movie),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: 0,
            onTap: (int) => print('tapped'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.close, size: 18),
            mini: true,
            onPressed: () => Navigator.pop(context),
          ),
        );
      },
    );
  }
}
