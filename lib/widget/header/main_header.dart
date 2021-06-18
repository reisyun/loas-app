import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  final double height = 80.0;

  final String title;

  final List<Widget>? actions;

  MainHeader({required this.title, this.actions});

  @override
  get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      actions: actions,
      toolbarHeight: height,
      elevation: 0,
    );
  }
}
