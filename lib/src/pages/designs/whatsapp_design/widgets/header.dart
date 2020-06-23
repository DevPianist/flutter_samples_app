import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget implements ObstructingPreferredSizeWidget {
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
    return CupertinoNavigationBar(
      transitionBetweenRoutes: false,
      automaticallyImplyLeading: false,
      border: Border.all(width: 0.6, color: color3),
      middle: Text(
        'Chats',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      leading: CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        child: Text('Edit'),
        onPressed: () {},
      ),
      trailing: CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        child: Icon(CupertinoIcons.create, size: 30),
        onPressed: () {},
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
        CupertinoDynamicColor.resolve(this.color2, context) ??
            CupertinoTheme.of(context).barBackgroundColor;
    return backgroundColor.alpha == 0xFF;
  }
}
