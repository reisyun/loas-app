import 'package:flutter/material.dart';
import 'package:loas/icon/custom_icons.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.quill_pen, size: 32),
          label: "기록",
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.discovery, size: 32),
          label: "탐색",
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.user, size: 32),
          label: "내정보",
        ),
      ],
    );
  }
}
