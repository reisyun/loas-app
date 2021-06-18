import 'package:flutter/material.dart';
import 'package:loas/icon/custom_icons.dart';

class LibraryList extends StatelessWidget {
  final Icon? icon;

  final String title;

  final Widget? content;

  LibraryList({required this.title, this.icon, this.content});

  @override
  Widget build(BuildContext context) {
    Icon leadingIcon =
        icon ?? Icon(CustomIcons.folder, size: 20, color: Color(0xFF626262));

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF1C2129),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            minLeadingWidth: 0,
            horizontalTitleGap: 8.0,
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFDEDEDE),
              ),
            ),
            // 가운데 정렬을 위해 Column
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [leadingIcon],
            ),
            trailing: Icon(
              CustomIcons.arrow_s,
              size: 20,
              color: Color(0xFF626262),
            ),
          ),
          // content가 없을 경우 fragment 생성
          content ?? SizedBox(),
        ],
      ),
    );
  }
}
