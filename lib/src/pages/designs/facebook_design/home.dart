import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples_app/src/pages/designs/facebook_design/widgets/separator.dart';
/* WIDGETS */
import 'widgets/header.dart';
import 'widgets/publication.dart';
import 'widgets/stories.dart';
import 'widgets/addPost.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color color1 = Color(0xFFdfe3ee);
  final Color color2 = Colors.grey[600];
  final Color color3 = Colors.grey[500];
  final List<String> _names = [
    'Maria Pilar Nuez Vela',
    'Rafael Aguera Rossello',
    'Alfonso Portela Maestre',
    'Jose miguel Aguayo',
    'Laura Milan Ferreira'
  ];
  List<Widget> _publications;

  @override
  void initState() {
    _publications = List<Widget>.generate(
      5,
      (index) => Column(
        children: <Widget>[
          Separator(),
          Publication(
            avatar: 'assets/images/profile/${index + 1}.jpg',
            name: _names[index],
            imageContent: (index == 0) ? false : true,
            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            imageAssetContent: 'assets/images/test/${index + 1}.jpg',
          ),
        ],
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: Header(color1: color1),
      child: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Stories(),
                    Separator(),
                    AddPost(color1: color1, color2: color2),
                    Column(
                      children: _publications,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
