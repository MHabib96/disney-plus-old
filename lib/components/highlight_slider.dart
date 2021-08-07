import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:flutter/material.dart';

class HighlightSlider extends StatelessWidget {
  final List<Movie> movies;

  HighlightSlider({@required this.movies});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (var movie in movies) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: _HighlightSlide(
              movie: movie,
            ),
          ),
        ],
      ],
      options: CarouselOptions(
        aspectRatio: 4 / 2,
        viewportFraction: 0.95,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}

class _HighlightSlide extends StatelessWidget {
  final Movie movie;

  _HighlightSlide({@required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('tapped highlight'),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(movie.highlight.imagePath, fit: BoxFit.cover),
            if (movie.highlight.blend == true) ...[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.1, 0.3, 0.4, 0.5],
                    colors: [
                      Colors.black38,
                      Colors.black26,
                      Colors.black12,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ],
            if (movie.highlight.notification != null) ...[
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    bottom: 15,
                  ),
                  child: Text(
                    movie.highlight.notification,
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
