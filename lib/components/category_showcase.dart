import 'package:disney_plus/components/builders/size_notifier.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class CategoryShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _CategoryButton(imagePath: kDisneyCategoryLogo)),
            SizedBox(width: 10),
            Expanded(child: _CategoryButton(imagePath: kPixarCategoryLogo)),
            SizedBox(width: 10),
            Expanded(child: _CategoryButton(imagePath: kMarvelCategoryLogo)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: _CategoryButton(imagePath: kStarWarsCategoryLogo)),
            SizedBox(width: 10),
            Expanded(child: _CategoryButton(imagePath: kNationalGeographicCategoryLogo)),
            SizedBox(width: 10),
            Expanded(child: _CategoryButton(imagePath: kStarCategoryLogo)),
          ],
        ),
      ],
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final String imagePath;

  _CategoryButton({@required this.imagePath});

  double getHorizontalPadding(double buttonWidth) => buttonWidth * 0.15;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 2,
      child: SizeNotifier(
        builder: (context, size, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xFF1F202C), Color(0xFF2D2F3B)],
              ),
              border: Border.all(
                color: Color(0xFF383943),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: getHorizontalPadding(size.width),
            ),
            child: Image.asset(imagePath),
          );
        },
      ),
    );
  }
}
