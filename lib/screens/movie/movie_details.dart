import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/genre_type.dart';
import 'package:disney_plus/types/rating_type.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  MovieDetails({@required this.movie});

  Widget _buildRating() {
    return Container(
      padding: EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Text(
        movie.rating.name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(child: _buildRating()),
              TextSpan(
                text: ' ${movie.releaseDate.year} - ${movie.duration} - ${movie.genres.name}',
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          'HD - VISION - 5.1',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 15),
        Text(
          '${movie.description}',
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}
