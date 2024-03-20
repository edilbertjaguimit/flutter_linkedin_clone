// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class JobNotificationCard extends StatelessWidget {
  final String jobDescription;
  final String jobLocation;
  final String jobCountNew;
  const JobNotificationCard(
      {required this.jobDescription,
      required this.jobLocation,
      required this.jobCountNew,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        jobDescription,
                        style: TextStyle(
                            // color: Color(0xff666666),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '($jobCountNew new)',
                        style: TextStyle(
                          color: Color(0xff057642),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    jobLocation,
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/icons/green bell icon.png'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Divider(height: 1),
        ),
      ],
    );
  }
}
