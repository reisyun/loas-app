import 'package:flutter/material.dart';
import 'package:loas/icon/custom_icons.dart';

class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.0,
      child: Column(
        children: [
          Container(
            height: 120.0,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 40.0,
                  height: 4.0,
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                ),
                Text(
                  '목록 선택',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  horizontalTitleGap: 16.0,
                  title: Text('감상한 애니'),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CustomIcons.history,
                        size: 20,
                        color: Color(0xFF489CEA),
                      )
                    ],
                  ),
                ),
                ListTile(
                  minLeadingWidth: 0,
                  horizontalTitleGap: 16.0,
                  title: Text('보고싶은 애니'),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CustomIcons.heart,
                        size: 20,
                        color: Color(0xFFE04590),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
