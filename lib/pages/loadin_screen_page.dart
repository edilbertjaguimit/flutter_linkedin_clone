// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    loadingScreen();
  }

  void loadingScreen() async {
    await Future.delayed(Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, '/signInOption'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CircleAvatar(
            radius: 60,
            child: Image.asset('assets/icons/LinkedIn Circle Logo.png'),
          ),
        ),
      ),
    );
  }
}
