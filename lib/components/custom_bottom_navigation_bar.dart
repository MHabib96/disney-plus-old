import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    @required this.currentIndex,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.blueGrey,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(54, 69, 79, 0.2), //.withOpacity(1),
      items: [
        BottomNavigationBarItem(
          label: "Explore",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Map",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Ticket",
          icon: Icon(Icons.file_download),
        ),
        BottomNavigationBarItem(
          label: "User",
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
