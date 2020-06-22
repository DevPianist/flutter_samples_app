import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemChat extends StatelessWidget {
  const ItemChat({
    Key key,
    @required this.color3,
    @required this.color1,
  }) : super(key: key);

  final Color color3;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 75, minWidth: double.infinity),
      padding: EdgeInsets.only(left: 14.0, top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Oscar Sandro',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Hola',
                          style: TextStyle(fontSize: 14, color: color3),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '11:50 AM',
                          style: TextStyle(color: color3, fontSize: 15),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                              color: color1,
                              borderRadius: BorderRadius.circular(11)),
                          child: Text(
                            '12',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(Icons.arrow_forward_ios,
                          color: color3, size: 14),
                    ),
                  ],
                ),
                Divider(height: 10, color: color3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
