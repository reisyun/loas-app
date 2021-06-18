import 'package:flutter/material.dart';
import 'package:loas/icon/custom_icons.dart';
import 'package:loas/widget/header/main_header.dart';
import 'package:loas/widget/navigation/bottom_nav.dart';
import 'package:loas/widget/list/library_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF2C2F36)),
        scaffoldBackgroundColor: Color(0xFF2C2F36),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Color(0xFF2C2F36),
          selectedIconTheme: IconThemeData(color: Color(0xFF8075FF)),
          unselectedIconTheme: IconThemeData(color: Color(0xFF999999)),
        ),
      ),
      home: Scaffold(
        appBar: MainHeader(
          title: '기록',
          actions: [
            IconButton(
              icon: Icon(CustomIcons.search, color: Color(0xFF999999)),
              onPressed: null,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children: [
            LibraryList(
              title: '감상한 애니',
              icon: Icon(
                CustomIcons.history,
                size: 20,
                color: Color(0xFF489CEA),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
