// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String imagePathLocation;
  final String jobDescription;
  final String companyName;
  final String companyLocation;
  final String countConnections;
  const JobCard(
      {required this.imagePathLocation,
      required this.jobDescription,
      required this.companyName,
      required this.companyLocation,
      required this.countConnections,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              imagePathLocation,
            ),
            radius: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        jobDescription,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          // color: Color(0xff0a66c2),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.bookmark_outline_outlined),
                          SizedBox(width: 20),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    companyName,
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    companyLocation,
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset('assets/icons/Mutual Friends.png'),
                      SizedBox(width: 5),
                      Text('$countConnections connections'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
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
