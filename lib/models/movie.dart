import 'package:disney_plus/types/category_types.dart';
import 'package:flutter/cupertino.dart';

import 'highlight.dart';

class Movie {
  final int id;
  final String title;
  final CategoryType category;
  final String browseImagePath;
  final Highlight highlight;

  Movie({
    @required this.id,
    @required this.title,
    @required this.category,
    @required this.browseImagePath,
    this.highlight,
  });
}
