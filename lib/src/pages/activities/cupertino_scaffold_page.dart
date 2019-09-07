import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {},
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark), title: Text('Hola Mundo'))
        ],
      ),
    );
  }
}

Widget _getTrailing() {
  return Container(
    child: CupertinoButton(
      child: Icon(CupertinoIcons.bookmark, color: Colors.blue),
      onPressed: () {
        print('Hola');
      },
    ),
  );
}
