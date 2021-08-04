import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class SliverHomeAppBar extends SliverPersistentHeaderDelegate {
  final double minExtent;
  final double maxExtent;

  SliverHomeAppBar({@required this.minExtent, @required this.maxExtent});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SafeArea(
      child: Opacity(
        opacity: (1 - shrinkOffset / maxExtent),
        child: Image.asset(
          kHomeScreenLogo,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
