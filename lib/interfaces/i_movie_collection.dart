import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/category_types.dart';

abstract class IMovieCollection {
  List<Movie> getByCategory(CategoryType category);
  List<Movie> getRandom(int numberOfMovies);
  List<Movie> getWithHighlights();
}
