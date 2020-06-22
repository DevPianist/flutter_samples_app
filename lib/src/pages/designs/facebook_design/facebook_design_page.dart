import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class FacebookDesignPage extends StatefulWidget {
  FacebookDesignPage({Key key}) : super(key: key);

  @override
  _FacebookDesignPageState createState() => _FacebookDesignPageState();
}

class _FacebookDesignPageState extends State<FacebookDesignPage> {
  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home)),
    BottomNavigationBarItem(icon: Icon(Icons.ondemand_video)),
    BottomNavigationBarItem(icon: Icon(Icons.group_work)),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_none)),
    BottomNavigationBarItem(icon: Icon(Icons.menu)),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _items,
        border: Border(
            top:
                BorderSide(width: 1, color: Colors.grey[500].withOpacity(0.4))),
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Home();
            break;
          default:
            return Container();
            break;
        }
      },
    );
  }
}
