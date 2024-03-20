// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String userProfileLocationPath;
  final String userName;
  final String timeNotify;
  final Color bgCardColor;
  const NotificationCard(
      {required this.userProfileLocationPath,
      required this.userName,
      required this.timeNotify,
      required this.bgCardColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(color: bgCardColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(userProfileLocationPath),
            radius: 25,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(userName),
                          SizedBox(width: 5),
                          Text(
                            'commented on your post',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(height: 5),
                      OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: Color(0xff0a66c2),
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(
                            Size(20, 35),
                          ),
                        ),
                        child: Text(
                          'View post',
                          style: TextStyle(
                              color: Color(0xff0a66c2),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.more_vert),
                      SizedBox(height: 10),
                      Text(timeNotify)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
