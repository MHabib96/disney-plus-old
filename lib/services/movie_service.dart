import 'package:disney_plus/collections/movie_collection.dart';
import 'package:disney_plus/extensions/list_extensions.dart';
import 'package:disney_plus/interfaces/i_movie_service.dart';
import 'package:disney_plus/models/key_value_pair.dart';
import 'package:disney_plus/models/movie.dart';

class MovieService implements IMovieService {
  MovieService._();

  static final MovieService _instance = MovieService._();

  factory MovieService() => _instance;

  @override
  List<Movie> getSuggestedMovies(Movie movie, int count) {
    var mutualMovies = MovieCollection().getByCategory(movie.category);
    mutualMovies.removeWhere((x) => x.id == movie.id);

    //key: mutual score, value: movie id
    List<KeyValuePair<int, int>> mutualMoviesWithScore = [];

    //Assign a score to movie based on mutual actors.
    for (var mutualMovie in mutualMovies) {
      int mutualScore = 0;
      for (var actor in mutualMovie.starring) {
        if (movie.starring.contains(actor)) {
          mutualScore++;
        }
      }
      mutualMoviesWithScore.add(new KeyValuePair(mutualScore, mutualMovie.id));
    }

    mutualMoviesWithScore.sort((x, y) => y.key.compareTo(x.key));

    return mutualMoviesWithScore
        .takeUpTo(count)
        .map((e) => mutualMovies.singleWhere((element) => element.id == e.value))
        .toList();
  }
}
