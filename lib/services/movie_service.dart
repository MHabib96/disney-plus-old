import 'package:disney_plus/interfaces/i_movie_service.dart';
import 'package:disney_plus/models/movie.dart';

class MovieService implements IMovieService {
  MovieService._();

  static final MovieService _instance = MovieService._();

  factory MovieService() => _instance;

  //TODO: Use passed movie and get a collection of suggested movies.
  //TODO: limit is the max count of returned movies.
  //TODO: exclude passed movie for suggested movies.
  //TODO: use movie name, actors, and category for smart suggestions.
  @override
  List<Movie> getSuggestedMovies(Movie movie, int min, int max) {
    return [movie, movie, movie, movie, movie];
  }
}
