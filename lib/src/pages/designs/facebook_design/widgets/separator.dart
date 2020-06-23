import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10.0,
      color: Color(0xFFdfe3ee),
    );
  }
}
