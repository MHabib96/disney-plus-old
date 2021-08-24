import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/category_type.dart';

abstract class IMovieCollection {
  Movie getById(movieId);
  List<Movie> getByCategory(CategoryType category);
  List<Movie> getRandom(int numberOfMovies);
  List<Movie> getWithHighlights();
}
