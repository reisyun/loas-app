import 'package:flutter/material.dart';
import 'package:loas/icon/custom_icons.dart';
import 'package:loas/widget/header/main_header.dart';
import 'package:loas/widget/navigation/bottom_nav.dart';
import 'package:loas/widget/bottom_sheet/select_libary_bottom_sheet.dart';
import 'package:loas/widget/list/library_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void _showSelectLibraryBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFF1C2129),
      barrierColor: Colors.white.withOpacity(0.12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: const Radius.circular(24.0),
        ),
      ),
      builder: (context) {
        return SelectLibraryBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
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
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => _showSelectLibraryBottomSheet(context),
          ),
        ),
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
          child: ListView(
            children: [
              LibraryList(
                title: '감상한 애니',
                icon: Icon(
                  CustomIcons.history,
                  size: 20,
                  color: Color(0xFF489CEA),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
