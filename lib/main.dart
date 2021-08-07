import 'package:disney_plus/routing.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(DisneyPlus());

class DisneyPlus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routing.generateRoute,
      initialRoute: kHomeScreenRoute,
    );
  }
}
