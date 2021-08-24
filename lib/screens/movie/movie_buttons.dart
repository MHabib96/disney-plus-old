import 'package:flutter/material.dart';

class MovieButtons extends StatelessWidget {
  final bool isPremier;

  MovieButtons({this.isPremier = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () => print('playing...'),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            minimumSize: Size(0, double.maxFinite),
          ),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Row(
              children: [
                if (!isPremier) ...[
                  Icon(Icons.play_arrow_rounded, color: Colors.black),
                ],
                Text(
                  !isPremier ? 'PLAY' : 'UNLOCK NOW',
                  style: TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 2),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                children: [
                  _CircularButton(
                    icon: Icons.add,
                    size: constraints.maxHeight,
                  ),
                  if (!isPremier) ...[
                    _CircularButton(
                      icon: Icons.download_sharp,
                      size: constraints.maxHeight,
                    ),
                    _CircularButton(
                      icon: Icons.people,
                      size: constraints.maxHeight,
                    ),
                  ],
                  _CircularButton(
                    icon: Icons.upload_sharp,
                    size: constraints.maxHeight,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _CircularButton extends StatelessWidget {
  final double size;
  final IconData icon;
  final Function onTap;

  _CircularButton({
    @required this.size,
    this.icon = Icons.close,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () => onTap,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.white),
          ),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
