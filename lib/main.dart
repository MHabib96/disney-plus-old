import 'package:disney_plus/screens/navigator_base/navigator_base_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DisneyPlus());

class DisneyPlus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigatorBaseScreen(),
    );
  }
}
