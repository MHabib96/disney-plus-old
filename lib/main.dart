import 'package:disney_plus/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DisneyPlus());

class DisneyPlus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
