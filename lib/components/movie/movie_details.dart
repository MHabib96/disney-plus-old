import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/genre_type.dart';
import 'package:disney_plus/types/rating_type.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  MovieDetails({@required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${movie.rating.name} ${movie.releaseDate.year} '
          '- ${movie.duration} - ${movie.genres.name}',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          '${movie.description}',
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}
