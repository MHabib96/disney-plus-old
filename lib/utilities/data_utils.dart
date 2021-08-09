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
    title: 'Avengers: Age of Ultron',
    category: CategoryType.Marvel,
    duration: '2h 23m',
    releaseDate: DateTime(2015, 4, 23),
    rating: RatingType.Twelve,
    genres: [
      GenreType.ScienceFiction,
      GenreType.SuperHero,
      GenreType.ActionAdventure,
    ],
    description: 'Tony Stark unwittingly creates an A.I. monster bent on destroying mankind',
    browseImagePath: '$kMovieImageBaseUrl/avengers_age_of_ultron/browse.PNG',
    selectedImagePath: '$kMovieImageBaseUrl/avengers_age_of_ultron/selected.PNG',
    logoImagePath: '$kMovieImageBaseUrl/avengers_age_of_ultron/logo.png',
  ));
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
    id: 1,
    title: 'Black Widow',
    category: CategoryType.Marvel,
    duration: '2h 15m',
    releaseDate: DateTime(2021, 7, 9),
    rating: RatingType.Twelve,
    genres: [
      GenreType.ScienceFiction,
      GenreType.Spy,
      GenreType.SuperHero,
      GenreType.ActionAdventure,
    ],
    description: 'Natasha confronts her history as a spy '
        'and the broken relationship left in her wake.',
    browseImagePath: '$kMovieImageBaseUrl/black_widow/browse.PNG',
    selectedImagePath: '$kMovieImageBaseUrl/black_widow/selected.PNG',
    logoImagePath: '$kMovieImageBaseUrl/black_widow/logo.png',
    isPremier: true,
    highlight: Highlight(
      imagePath: '$kMovieImageBaseUrl/black_widow/highlight.jpg',
      notification: 'Now Streaming with Premier Access',
    ),
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
    id: 3,
    title: 'The Falcon and the Winter Solider',
    category: CategoryType.Marvel,
    duration: '1 season',
    releaseDate: DateTime(2021, 3, 19),
    rating: RatingType.Twelve,
    genres: [
      GenreType.ScienceFiction,
      GenreType.SuperHero,
      GenreType.Buddy,
    ],
    description: 'As The Flag Smashers escalate their efforts, Sam and Bucky take action.',
    browseImagePath: '$kMovieImageBaseUrl/the_falcon_and_the_winter_soldier/browse.PNG',
    selectedImagePath: '$kMovieImageBaseUrl/the_falcon_and_the_winter_soldier/selected.PNG',
    logoImagePath: '$kMovieImageBaseUrl/the_falcon_and_the_winter_soldier/logo.png',
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
