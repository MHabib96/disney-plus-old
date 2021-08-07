import 'package:disney_plus/models/highlight.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/category_types.dart';
import 'package:disney_plus/utilities/constants.dart';

//Statically defined movies as there is no database support.
List<Movie> buildMovies() {
  List<Movie> movies = [];
  movies.add(Movie(
    id: 1,
    title: 'Avengers: Age of Ultron',
    category: CategoryType.Marvel,
    browseImagePath: '$kMovieImageBaseUrl/avengers_aou.PNG',
  ));
  movies.add(Movie(
    id: 2,
    title: 'Wonda Vision',
    category: CategoryType.Marvel,
    browseImagePath: '$kMovieImageBaseUrl/wonda_vision.PNG',
  ));
  movies.add(Movie(
    id: 3,
    title: 'The Falcon and the Winter Soldier',
    category: CategoryType.Marvel,
    browseImagePath: '$kMovieImageBaseUrl/the_falcon_and_the_winter_soldier.PNG',
  ));
  movies.add(Movie(
    id: 4,
    title: 'Black Widow',
    category: CategoryType.Marvel,
    browseImagePath: '$kMovieImageBaseUrl/black_widow.PNG',
    highlight: Highlight(
      imagePath: '$kHighlightImageBaseUrl/black_widow.jpg',
      notification: 'Now Streaming with\nPremier Access',
    ),
  ));
  movies.add(Movie(
      id: 5,
      title: 'Loki',
      browseImagePath: '$kMovieImageBaseUrl/loki.PNG',
      category: CategoryType.Marvel,
      highlight: Highlight(
        imagePath: '$kHighlightImageBaseUrl/loki.jpg',
        notification: 'All Episodes Now Available',
      )));
  return movies;
}

//   highlights.add(Highlight(
//     imagePath: kMonstersAtWorkHighlight,
//     notification: 'New Episode Now Streaming',
//     blend: true,
//   ));
//   highlights.add(Highlight(
//     imagePath: kHighSchoolMusicalHighlight,
//     notification: 'All Episodes Now Streaming',
//     blend: true,
//   ));
//   highlights.add(Highlight(
//     imagePath: kJungleCruiseHighlight,
//     notification: 'Now Streaming with\nPremier Access',
//     blend: true,
//   ));
//   return highlights;
// }
