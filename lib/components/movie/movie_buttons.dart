import 'package:disney_plus/utilities/constants.dart';
import 'package:flutter/material.dart';

class MovieButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kMovieScreenHorizontalPadding,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ElevatedButton(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow_rounded, color: Colors.black),
                    Text(
                      'RESUME',
                      style: TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 2),
                    ),
                  ],
                ),
              ),
              onPressed: () => print('playing'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(10, double.maxFinite),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.5, bottom: 0.5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _CircularButton(icon: Icons.add),
                  _CircularButton(icon: Icons.download_sharp),
                  _CircularButton(icon: Icons.people),
                  _CircularButton(icon: Icons.upload_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CircularButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  _CircularButton({
    this.icon = Icons.close,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Container(
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: Icon(icon, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
