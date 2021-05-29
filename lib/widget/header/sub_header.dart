import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget implements PreferredSizeWidget {
  final double height = 64.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "기록",
        style: TextStyle(fontSize: 20),
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton(
          onSelected: null,
          itemBuilder: (BuildContext context) {
            return {'Logout', 'Settings'}
                .map((String choice) => PopupMenuItem(
                      value: choice,
                      child: Text(choice),
                    ))
                .toList();
          },
        ),
      ],
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: null,
      ),
      toolbarHeight: height,
    );
  }

  @override
  get preferredSize => Size.fromHeight(height);
}
