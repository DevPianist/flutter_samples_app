import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: color1,
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text('facebook iOS'),
        previousPageTitle: 'Apps designs',
      ),
      child: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Header(color1: color1),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Stories(),
                    SizedBox(height: 10.0),
                    AddPost(color1: color1, color2: color2),
                    SizedBox(height: 10.0),
                    Publication(
                      avatar: 'assets/images/avatar.jpg',
                      name: 'Oscar Sandro Delgadillo Rivera',
                      content:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    ),
                    SizedBox(height: 10.0),
                    Publication(
                      avatar: 'assets/images/avatar.jpg',
                      name: 'Oscar Sandro Delgadillo Rivera',
                      imageContent: true,
                      content:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      imageUrlContent:
                          'https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/newsletter/eiffel-tower-in-paris-151-medium.jpg?1564742900',
                    ),
                    SizedBox(height: 10.0),
                    Publication(
                      avatar: 'assets/images/avatar.jpg',
                      name: 'Oscar Sandro Delgadillo Rivera',
                      imageContent: true,
                      content:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      imageUrlContent:
                          'https://live.mrf.io/statics/i/ps/www.ecestaticos.com/imagestatic/clipping/3b3/f25/3b3f25fb1374f9c220f727acd0656b3b/el-misterioso-cuarto-idioma-de-suiza.jpg',
                    ),
                    SizedBox(height: 10.0),
                    Publication(
                      avatar: 'assets/images/avatar.jpg',
                      name: 'Oscar Sandro Delgadillo Rivera',
                      content:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
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
