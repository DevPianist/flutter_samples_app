import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget implements ObstructingPreferredSizeWidget {
  const Header({
    Key key,
    @required this.color1,
  }) : super(key: key);

  final Color color1;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      automaticallyImplyMiddle: false,
      border: Border(),
      backgroundColor: Colors.white,
      padding: EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
      automaticallyImplyLeading: false,
      transitionBetweenRoutes: false,
      leading: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'facebook',
          style: TextStyle(
            color: CupertinoColors.systemBlue,
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
        ),
      ),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.search, size: 24, color: Colors.black),
            maxRadius: 16,
            backgroundColor: color1,
          ),
          SizedBox(width: 8),
          CircleAvatar(
            child: Icon(Icons.message, size: 20, color: Colors.black),
            maxRadius: 16,
            backgroundColor: color1,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(44.0);
  }

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final Color backgroundColor =
        CupertinoDynamicColor.resolve(this.color1, context) ??
            CupertinoTheme.of(context).barBackgroundColor;
    return backgroundColor.alpha == 0xFF;
  }
}
