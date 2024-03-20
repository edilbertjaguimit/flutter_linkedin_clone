// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/My ID.jpg'),
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
                                'Edilbert Crist Jaguimit ',
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
                          Image.asset('assets/icons/3 dots icon.png')
                        ],
                      ),

                      Text('Aspiring Web Developer and Software Engineer...'),
                      Text('8h'),
                      // Row(
                      //   children: [
                      //     Text(
                      //         'Aspiring Web Developer and Software ...'),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                'My personal portfolio website made with Bootstrap. Actually, I just learned the basics of Bootstrap, and to test my skills, I challenged myself to create a personal website. So, I just want to share my achievements this year.'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('You can check the live here:'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text('Live: '),
                Text(
                  'https://edilbertjaguimit.netlify.app/',
                  style: TextStyle(
                    color: Color(0xff0a66c2),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Image.asset('assets/My Portfolio Website.PNG'),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/react heart icon.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'assets/icons/react like icon.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'assets/icons/react clap icon.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Text('346 Comments'),
              ],
            ),
          ),
          Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/like icon.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 3),
                    Text(
                      'Like',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff666666),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/comments icon.png',
                      width: 30,
                      height: 30,
                      // fit: BoxFit.cover,
                    ),
                    SizedBox(width: 3),
                    Text(
                      'Comment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff666666),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/share icon.png',
                      width: 30,
                      height: 30,
                      // fit: BoxFit.cover,
                    ),
                    SizedBox(width: 3),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff666666),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      color: Colors.white,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    );
  }
}
