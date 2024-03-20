// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter_linkedin_clone/components/alert_dialog.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _hidePassword = true;
  bool _rememberMe = false;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid Login'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Username or Password is incorrect'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              child: Image.asset('assets/icons/SignIn - LinkedIn.png'),
            ),
            SizedBox(height: 50),
            Text(
              'Sign in',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  'or ',
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Join LinkedIn',
                  style: TextStyle(
                      color: Color(0xff0a66c2),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('assets/icons/google icon.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('assets/icons/apple icon.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign in with Apple',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('assets/facebook square logo.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('assets/icons/link icon.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign in with a one-time link',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color(0xff666666),
                    // decoration: BoxDecoration(),
                    child: Text(''),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'or',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color(0xff666666),
                    // decoration: BoxDecoration(),
                    child: Text(''),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextField(
              controller: email,
              style: const TextStyle(color: Color(0xff666666)),
              decoration: InputDecoration(
                hintText: 'Email or Phone',

                // errorText: _isEmpty ? "Value Can't Be Empty" : null,
                hintStyle: const TextStyle(color: Color(0xff666666)),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff666666)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff666666)),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: password,
              obscureText: _hidePassword,
              style: const TextStyle(color: Color(0xff666666)),
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _hidePassword = !_hidePassword;
                    });
                  },
                  icon: Icon(
                      _hidePassword ? Icons.visibility : Icons.visibility_off),
                ),
                // errorText: _isEmpty ? "Value Can't Be Empty" : null,
                hintStyle: const TextStyle(color: Color(0xff666666)),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff666666)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff666666)),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = !_rememberMe;
                      });
                    },
                    checkColor: Colors.white,
                    activeColor: Color(0xff0a66c2),
                    // fillColor: MaterialStateProperty.all(Colors.white),
                    // focusColor: Colors.white,
                    // side: BorderSide(color: Colors.black),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>
                          const BorderSide(width: 1, color: Color(0xff666666)),
                    ),
                  ),
                ),
                Text(
                  'Remember me.',
                  style: TextStyle(fontSize: 16, color: Color(0xff666666)),
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Learn more.',
                //     style: TextStyle(color: Color(0xff0a66c2)),
                //   ),
                // ),
                Text(
                  'Learn more.',
                  style: TextStyle(fontSize: 16, color: Color(0xff0a66c2)),
                ),
              ],
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: Text(
            //     'Learn more.',
            //     style: TextStyle(fontSize: 16, color: Color(0xff0a66c2)),
            //   ),
            // ),
            SizedBox(height: 10),
            Text(
              'Learn more.',
              style: TextStyle(fontSize: 16, color: Color(0xff0a66c2)),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (email.text == 'admin' && password.text == 'admin') {
                          Navigator.pushReplacementNamed(context, '/home');
                        } else {
                          _showMyDialog();
                        }
                        // Navigator.pushReplacementNamed(context, '/home');
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff0a66c2))),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
