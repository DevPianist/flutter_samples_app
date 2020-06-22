import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  const AddPost({
    Key key,
    @required this.color1,
    @required this.color2,
  }) : super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: MaterialButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: color1.withOpacity(0.8),
                      child: Text(
                        'Add a post',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.video_camera_solid,
                          size: 20,
                          color: color2,
                        ),
                        Text(
                          ' Live',
                          style: TextStyle(
                            color: color2,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Row(
                    children: <Widget>[
                      Icon(CupertinoIcons.photo_camera_solid,
                          size: 20, color: color2),
                      Text(
                        ' Camera',
                        style: TextStyle(
                          color: color2,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Row(
                    children: <Widget>[
                      Icon(CupertinoIcons.location_solid,
                          size: 20, color: color2),
                      Text(
                        ' Check In',
                        style: TextStyle(
                          color: color2,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
