import 'package:disney_plus/extensions/list_extensions.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/screens/movie/movie_screen.dart';
import 'package:flutter/material.dart';

class SuggestedTab extends StatelessWidget {
  final List<Movie> movies;

  SuggestedTab({this.movies});

  Widget _buildSuggestedMovie(Movie movie, BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => MovieScreen(movie: movie)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(movie.browseImagePath),
        ),
      ),
    );
  }

  Widget _buildSuggestedMovieRow(List<Movie> movies, int moviePerRow, BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < movies.length; i++) ...[
          _buildSuggestedMovie(movies[i], context),
          if (i != movies.length - 1) ...[
            SizedBox(width: 20),
          ]
        ],
        if (movies.length < moviePerRow) ...[
          for (int i = 0; i < moviePerRow - movies.length; i++) ...[
            Expanded(child: Container()),
            SizedBox(width: 20),
          ]
        ]
      ],
    );
  }

  List<Widget> _buildSuggestedMovieRows(int moviePerRow, BuildContext context) {
    List<Widget> widgets = [];
    var movieRows = movies.chunks(moviePerRow);
    for (var movieRow in movieRows) {
      widgets.add(_buildSuggestedMovieRow(movieRow, moviePerRow, context));
      widgets.add(SizedBox(height: 20));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildSuggestedMovieRows(2, context),
    );
  }
}
