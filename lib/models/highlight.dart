import 'package:flutter/material.dart';

class Highlight {
  final String imagePath;
  final String notification;
  final bool blend;

  Highlight({
    @required this.imagePath,
    this.notification,
    this.blend,
  });
}
