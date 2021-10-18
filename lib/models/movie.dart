import 'package:disney_plus/types/category_type.dart';
import 'package:disney_plus/types/genre_type.dart';
import 'package:disney_plus/types/rating_type.dart';
import 'package:flutter/cupertino.dart';

import 'highlight.dart';

class Movie {
  final int id;
  final String title;
  final String description;
  final DateTime releaseDate;
  final String duration;
  final RatingType rating;
  final List<String> starring;
  final List<GenreType> genres;
  final CategoryType category;
  final String browseImagePath;
  final String selectedImagePath;
  final String logoImagePath;
  final bool isPremier;
  final Highlight highlight;

  Movie({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.releaseDate,
    @required this.duration,
    @required this.rating,
    @required this.starring,
    @required this.genres,
    @required this.category,
    @required this.browseImagePath,
    @required this.selectedImagePath,
    @required this.logoImagePath,
    this.isPremier = false,
    this.highlight,
  });
}
