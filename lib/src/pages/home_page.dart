import 'package:flutter/cupertino.dart';
import 'designs_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text('Flutter samples'),
      ),
      child: SafeArea(
        child: Container(
          alignment: Alignment.center,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CupertinoButton(
                color: CupertinoColors.systemBlue,
                child: Text('Apps designs'),
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => DesignsPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
