import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function() onPressedYes;
  final Function() onPressedNo;
  // final List<Function()> action;
  // final List<Widget> message;
  const MyAlertDialog(
      {required this.title,
      required this.message,
      required this.onPressedYes,
      required this.onPressedNo,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(message),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onPressedNo,
          child: const Text('No'),
        ),
        TextButton(
          onPressed: onPressedYes,
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
