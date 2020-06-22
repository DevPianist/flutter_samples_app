import 'package:flutter/material.dart';
import 'history.dart';

class Stories extends StatelessWidget {
  final List<Widget> _stories =
      List<Widget>.generate(5, (index) => History(index: index));

  Stories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
      height: 180,
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: _stories),
    );
  }
}
