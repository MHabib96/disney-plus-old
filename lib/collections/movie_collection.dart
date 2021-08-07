import 'dart:math';

import 'package:disney_plus/interfaces/i_movie_collection.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/category_types.dart';
import 'package:disney_plus/utilities/data_utils.dart';

class MovieCollection implements IMovieCollection {
  List<Movie> _movies = [];

  MovieCollection() {
    _init();
  }

  List<Movie> getWithHighlights() {
    return _movies.where((movie) => movie.highlight != null).toList();
  }

  List<Movie> getRandom(int numberOfMovies) {
    final random = Random();
    List<Movie> randomMovies = [];
    for (int i = 0; i < numberOfMovies; i++) {
      var movie = _movies[random.nextInt(_movies.length)];
      randomMovies.add(movie);
    }
    return randomMovies;
  }

  List<Movie> getByCategory(CategoryType category) {
    return _movies.where((movie) => movie.category == category).toList();
  }

  void _init() => _movies = buildMovies();
}
