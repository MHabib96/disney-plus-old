import 'dart:math';

import 'package:disney_plus/interfaces/i_movie_collection.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/category_types.dart';
import 'package:disney_plus/utilities/data_utils.dart';

class MovieCollection implements IMovieCollection {
  List<Movie> _movies = [];

  MovieCollection._();

  static final MovieCollection _instance = MovieCollection._();

  factory MovieCollection() {
    if (_instance._movies.isEmpty) {
      _instance._movies = buildMovies();
    }
    return _instance;
  }

  @override
  List<Movie> getByCategory(CategoryType category) {
    return _movies.where((movie) => movie.category == category).toList();
  }

  @override
  List<Movie> getRandom(int numberOfMovies) {
    final random = Random();
    List<Movie> randomMovies = [];
    for (int i = 0; i < numberOfMovies; i++) {
      var movie = _movies[random.nextInt(_movies.length)];
      randomMovies.add(movie);
    }
    return randomMovies;
  }

  @override
  List<Movie> getWithHighlights() {
    return _movies.where((movie) => movie.highlight != null).toList();
  }
}
