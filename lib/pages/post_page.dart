// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            setState(() {
              Navigator.pushReplacementNamed(context, '/home');
            });
          },
        ),
      ),
      body: SafeArea(
        child: Text('heelo'),
      ),
    );
  }
}
