import 'package:disney_plus/models/movie.dart';

abstract class IMovieService {
  List<Movie> getSuggestedMovies(Movie movie, int count);
}
