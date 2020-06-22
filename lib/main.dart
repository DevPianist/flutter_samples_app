import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples_app/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter samples',
      theme: CupertinoThemeData(primaryColor: CupertinoColors.systemBlue),
      home: HomePage(),
    );
  }
}
