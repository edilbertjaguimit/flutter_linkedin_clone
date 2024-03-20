// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyNetworkCard extends StatelessWidget {
  const MyNetworkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/Bill Gates.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Bill Gates ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '• 1st',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          // Image.asset('assets/icons/3 dots icon.png')
                        ],
                      ),
                      Text('Co-chair, Bill & Melinda Gates Foundation'),
                      Row(
                        children: [
                          Image.asset('assets/icons/Two Rings.png'),
                          SizedBox(width: 5),
                          Text('9 mutual connections'),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Accept',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff0a66c2))),
                          ),
                          SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Ignore',
                              style: TextStyle(
                                  color: Color(0xff666666), fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      color: Colors.white,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    );
  }
}
