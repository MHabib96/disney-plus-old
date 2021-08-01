import 'package:disney_plus/components/builders/responsive_base.dart';
import 'package:disney_plus/components/category_showcase.dart';
import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 21, 32, 1),
      body: ResponsiveBase(
        builder: (context, details) {
          return Column(
            children: [
              Image.asset(kHomeScreenLogo),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CategoryShowcase(),
              ),
            ],
          );
        },
      ),
    );
  }
}
