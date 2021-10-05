import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.info)),
      ]),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Center(
              child: Text('Tab $index'),
            );
          },
        );
      },
    );
  }
}
