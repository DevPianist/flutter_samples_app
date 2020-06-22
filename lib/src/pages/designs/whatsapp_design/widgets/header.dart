import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    this.color1,
    this.color2,
    this.color3,
  }) : super(key: key);
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: <Widget>[
                CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  child: Text('Edit'),
                  onPressed: () {},
                ),
                Spacer(),
                CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  child: Icon(CupertinoIcons.create, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Text(
              'Chats',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 0,
            color: color3,
          )
        ],
      ),
    );
  }
}
