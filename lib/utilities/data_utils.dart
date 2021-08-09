import 'package:disney_plus/models/highlight.dart';
import 'package:disney_plus/models/movie.dart';
import 'package:disney_plus/types/category_type.dart';
import 'package:disney_plus/types/genre_type.dart';
import 'package:disney_plus/types/rating_type.dart';
import 'package:disney_plus/utilities/constants.dart';

//Statically defined movies as there is no database support.
List<Movie> buildMovies() {
  List<Movie> movies = [];
  movies.add(Movie(
    id: 1,
    title: 'Avengers: EndGame',
    category: CategoryType.Marvel,
    duration: '3h 4m',
    releaseDate: DateTime(2019, 4, 25),
    rating: RatingType.Twelve,
    genres: [
      GenreType.ScienceFiction,
      GenreType.Fantasy,
      GenreType.SuperHero,
      GenreType.ActionAdventure,
    ],
    description: 'The epic finale to the Infinity Sage, '
        'this dramatic showdown pits the Avengers against Thanos.',
    browseImagePath: '$kMovieImageBaseUrl/avengers_endgame/browse.PNG',
    selectedImagePath: '$kMovieImageBaseUrl/avengers_endgame/selected.png',
    logoImagePath: '$kMovieImageBaseUrl/avengers_endgame/logo.png',
  ));
  movies.add(Movie(
    id: 2,
    title: 'Wonda Vision',
    category: CategoryType.Marvel,
    duration: '1 season',
    releaseDate: DateTime(2021, 1, 15),
    rating: RatingType.Twelve,
    genres: [
      GenreType.Romance,
      GenreType.Drama,
      GenreType.ScienceFiction,
    ],
    description: 'The events of WondaVision come to a head, '
        'and the destinies of all who took part are determined',
    browseImagePath: '$kMovieImageBaseUrl/wonda_vision/browse.PNG',
    selectedImagePath: '$kMovieImageBaseUrl/wonda_vision/selected.PNG',
    logoImagePath: '$kMovieImageBaseUrl/wonda_vision/logo.png',
  ));
  movies.add(Movie(
      //id: 5,
      title: 'Loki',
      category: CategoryType.Marvel,
      duration: '1 season',
      releaseDate: DateTime(2021, 6, 9),
      rating: RatingType.Twelve,
      genres: [
        GenreType.ScienceFiction,
        GenreType.Fantasy,
        GenreType.ActionAdventure,
      ],
      description: 'The clock is ticking in the season finale which finds '
          'Loki and Sylvie on a date with destiny.',
      browseImagePath: '$kMovieImageBaseUrl/loki/browse.PNG',
      selectedImagePath: '$kMovieImageBaseUrl/loki/selected.PNG',
      logoImagePath: '$kMovieImageBaseUrl/loki/logo.png',
      highlight: Highlight(
        imagePath: '$kMovieImageBaseUrl/loki/highlight.jpg',
        notification: 'All Episodes Now Available',
      )));

  // movies.add(Movie(
  //   //id: 1,
  //   title: 'Avengers: Age of Ultron',
  //   category: CategoryType.Marvel,
  //   browseImagePath: '$kMovieImageBaseUrl/avengers_aou.PNG',
  // ));
  // movies.add(Movie(
  //   //id: 3,
  //   title: 'The Falcon and the Winter Soldier',
  //   category: CategoryType.Marvel,
  //   browseImagePath: '$kMovieImageBaseUrl/the_falcon_and_the_winter_soldier.PNG',
  // ));
  // movies.add(Movie(
  //   //id: 4,
  //   title: 'Black Widow',
  //   category: CategoryType.Marvel,
  //   browseImagePath: '$kMovieImageBaseUrl/black_widow.PNG',
  //   highlight: Highlight(
  //     imagePath: '$kHighlightImageBaseUrl/black_widow.jpg',
  //     notification: 'Now Streaming with\nPremier Access',
  //   ),
  // ));
  // movies.add(Movie(
  //     //id: 5,
  //     title: 'Loki',
  //     browseImagePath: '$kMovieImageBaseUrl/browse.PNG',
  //     category: CategoryType.Marvel,
  //     highlight: Highlight(
  //       imagePath: '$kHighlightImageBaseUrl/highlight.jpg',
  //       notification: 'All Episodes Now Available',
  //     )));
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
