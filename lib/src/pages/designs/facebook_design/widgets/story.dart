import 'package:flutter/material.dart';

class History extends StatelessWidget {
  final int index;
  const History({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0, left: (index == 0) ? 10 : 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(0, 0, 0, 0.2),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage((index == 0)
                ? 'assets/images/avatar.jpg'
                : 'assets/images/test/${index + 1}.jpg')),
      ),
      width: 90,
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: 5,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
              child: (index == 0)
                  ? Icon(Icons.add, color: Colors.white)
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/profile/${index + 5}.jpg'),
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
