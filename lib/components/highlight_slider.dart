import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney_plus/models/highlight.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class HighlightSlider extends StatelessWidget {
  List<Highlight> _getHighlights() {
    List<Highlight> highlights = [];
    highlights.add(Highlight(
      imagePath: kLokiHighlight,
      notification: 'All Episodes Now Available',
    ));
    highlights.add(Highlight(
      imagePath: kBlackWidowHighlight,
      notification: 'Now Streaming with\nPremier Access',
    ));
    highlights.add(Highlight(
      imagePath: kMonstersAtWorkHighlight,
      notification: 'New Episode Now Streaming',
      blend: true,
    ));
    highlights.add(Highlight(
      imagePath: kHighSchoolMusicalHighlight,
      notification: 'All Episodes Now Streaming',
      blend: true,
    ));
    highlights.add(Highlight(
      imagePath: kJungleCruiseHighlight,
      notification: 'Now Streaming with\nPremier Access',
      blend: true,
    ));
    return highlights;
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (var highlight in _getHighlights()) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: _HighlightSlide(
              image: highlight.imagePath,
              notification: highlight.notification,
              blend: highlight.blend,
            ),
          ),
        ],
      ],
      options: CarouselOptions(
        aspectRatio: 4 / 2,
        viewportFraction: 0.95,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}

class _HighlightSlide extends StatelessWidget {
  final String image;
  final String notification;
  final bool blend;

  _HighlightSlide({
    @required this.image,
    this.notification,
    this.blend = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('tapped highlight'),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            if (blend == true) ...[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.1, 0.3, 0.4, 0.5],
                    colors: [
                      Colors.black38,
                      Colors.black26,
                      Colors.black12,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ],
            if (notification != null) ...[
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    bottom: 15,
                  ),
                  child: Text(
                    notification,
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
