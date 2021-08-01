import 'package:disney_plus/models/screen_details.dart';
import 'package:disney_plus/utilities/ui_utils.dart';
import 'package:flutter/material.dart';

class ResponsiveBase extends StatelessWidget {
  final Widget Function(BuildContext context, ScreenDetails screenDetails) builder;

  const ResponsiveBase({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          var screenDetails = ScreenDetails(
            orientation: mediaQuery.orientation,
            deviceScreenType: getDeviceType(mediaQuery),
            screenSize: constraints.biggest,
          );
          return builder(context, screenDetails);
        },
      ),
    );
  }
}
