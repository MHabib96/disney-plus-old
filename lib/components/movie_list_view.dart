import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
  final String label;
  final List<String> images;
  final double horizontalPadding;

  MovieListView({
    this.label,
    this.images,
    this.horizontalPadding = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 5,
                left: horizontalPadding,
              ),
              child: Text(label, style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
        Container(
          height: 130,
          child: ListView.separated(
            //shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(images[index]),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(indent: 8);
            },
          ),
        ),
      ],
    );
  }
}
