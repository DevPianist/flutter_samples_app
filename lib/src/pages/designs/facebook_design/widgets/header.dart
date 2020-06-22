import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.color1,
  }) : super(key: key);

  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
            child: Row(
              children: <Widget>[
                Text(
                  'facebook',
                  style: TextStyle(
                    color: CupertinoColors.systemBlue,
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  child: Icon(Icons.search, size: 24, color: Colors.black),
                  maxRadius: 16,
                  backgroundColor: color1,
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  child: Icon(Icons.message, size: 20, color: Colors.black),
                  maxRadius: 16,
                  backgroundColor: color1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
