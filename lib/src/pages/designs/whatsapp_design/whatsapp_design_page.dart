import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
/* WIDGETS */
import 'widgets/header.dart';
import 'widgets/item_chat.dart';

class WhatsappDesignPage extends StatefulWidget {
  WhatsappDesignPage({Key key}) : super(key: key);

  @override
  _WhatsappDesignPageState createState() => _WhatsappDesignPageState();
}

class _WhatsappDesignPageState extends State<WhatsappDesignPage> {
  final Color color1 = CupertinoColors.systemBlue;
  final Color color2 = CupertinoColors.systemGrey6;
  final Color color3 = CupertinoColors.systemGrey2;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: Header(color1: color1, color2: color2, color3: color3),
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: <Widget>[
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Text('Broadcast Lists'),
                            onPressed: () {},
                          ),
                          Spacer(),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Text('New Group'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 1, color: color3),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                    ItemChat(color3: color3, color1: color1),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
