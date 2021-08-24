import 'dart:ui';

import 'package:disney_plus/components/builders/responsive_base.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/screens/movie/movie_buttons.dart';
import 'package:disney_plus/screens/movie/movie_details.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

//TODO: Shade top of screen.
//TODO: Add blurred background.
//TODO: Add movie tabs (Suggested, Extras, Details)
class MovieScreen extends StatelessWidget {
  final Movie movie;

  MovieScreen({
    @required this.movie,
  });

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
                  movie.selectedImagePath,
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
                        movie.logoImagePath,
                        height: screenDetails.screenSize.height * 0.18,
                      ),
                    ),
                    if (movie.isPremier) ...[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          kPremierAccessLogo,
                          height: screenDetails.screenSize.height * 0.08,
                        ),
                      ),
                    ],
                    SizedBox(height: 15),
                    SizedBox(
                      height: screenDetails.screenSize.height * 0.06,
                      child: MovieButtons(
                        isPremier: movie.isPremier,
                      ),
                    ),
                    SizedBox(height: 15),
                    MovieDetails(movie: movie),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.close, size: 18),
            backgroundColor: Colors.grey.withOpacity(0.2),
            mini: true,
            onPressed: () => Navigator.pop(context),
          ),
        );
      },
    );
  }
}
