import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) => setState(() {
        _selectedIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: 'Discover'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_rounded), label: 'Saved'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xff212529),
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedLabelStyle:
          const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      onTap: _onItemTapped,
      iconSize: 28,
    );
  }
}
