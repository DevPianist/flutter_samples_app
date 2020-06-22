import 'package:flutter/material.dart';

class Publication extends StatelessWidget {
  Publication({
    Key key,
    @required this.avatar,
    @required this.name,
    @required this.content,
    this.imageUrlContent,
    this.imageContent = false,
  }) : super(key: key);
  final String avatar;
  final String name;
  final String content;
  final String imageUrlContent;
  final Color color2 = Colors.grey[600];
  final Color color3 = Colors.grey[500];
  final bool imageContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(avatar),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '  $name',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '  Just now • ',
                              style: TextStyle(
                                color: color3,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.public,
                              size: 12,
                              color: color2,
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz, color: color2)
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  '$content ',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          (imageContent)
              ? Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  width: double.infinity,
                  height: 220,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrlContent),
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress != null) {
                        return Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.black26),
                          ),
                        );
                      } else
                        return child;
                    },
                  ),
                )
              : Container(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 30,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 11,
                        child: Image(
                          width: 18,
                          height: 18,
                          image: AssetImage('assets/images/love.png'),
                        ),
                      ),
                      Positioned(
                        child: Image(
                          width: 18,
                          height: 18,
                          image: AssetImage('assets/images/like.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Oscar Delgadillo and 18 others',
                  style: TextStyle(
                    fontSize: 13,
                    color: color3,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '120 Comments',
                  style: TextStyle(
                    fontSize: 13,
                    color: color3,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
