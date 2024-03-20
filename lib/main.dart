// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_linkedin_clone/pages/home_page.dart';
import 'package:flutter_linkedin_clone/pages/loadin_screen_page.dart';
import 'package:flutter_linkedin_clone/pages/post_page.dart';
import 'package:flutter_linkedin_clone/pages/signin_option_page.dart';
import 'package:flutter_linkedin_clone/pages/signin_page.dart';

void main() => runApp(
      MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.white,
        ),
        routes: {
          '/': (context) => const LoadingPage(),
          '/home': (context) => const HomePage(),
          '/signInOption': (context) => const SignInOptionPage(),
          '/signIn': (context) => const SignInPage(),
          '/post': (context) => const PostPage(),
        },
        initialRoute: '/',
        // debugShowMaterialGrid: true,
        debugShowCheckedModeBanner: false,
      ),
    );
