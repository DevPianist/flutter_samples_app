import 'package:flutter/cupertino.dart';
import 'designs/facebook_design/facebook_design_page.dart';
import 'designs/whatsapp_design/whatsapp_design_page.dart';

class DesignsPage extends StatefulWidget {
  DesignsPage({Key key}) : super(key: key);

  @override
  _DesignsPageState createState() => _DesignsPageState();
}

class _DesignsPageState extends State<DesignsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        middle: Text('Apps designs'),
        previousPageTitle: 'Flutter samples',
      ),
      child: SafeArea(
        child: Container(
          alignment: Alignment.center,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                color: CupertinoColors.systemBlue,
                child: Text('Facebook iOS design'),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => FacebookDesignPage()));
                },
              ),
              SizedBox(height: 10),
              CupertinoButton(
                color: CupertinoColors.systemBlue,
                child: Text('WhatsApp iOS design'),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => WhatsappDesignPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
