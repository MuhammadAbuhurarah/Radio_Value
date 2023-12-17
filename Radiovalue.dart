import 'package:flutter/material.dart';

class Settingscr extends StatefulWidget {
  const Settingscr({
    super.key,
  });

  @override
  State<Settingscr> createState() => _SettingscrState();
}

class _SettingscrState extends State<Settingscr> {
  int isSlected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Radio(
              value: 0,
              groupValue: isSlected,
              onChanged: (value) {
                setState(() {
                  isSlected = value!;
                });
              }),
          Radio(
              value: 1,
              groupValue: isSlected,
              onChanged: (value) {
                setState(() {
                  isSlected = value!;
                });
              }),
          if (isSlected == 0)
            Column(
              children: [Text('radio button value no.1')],
            ),
          if (isSlected == 1)
            const Column(
              children: [Text('Radio Button value 2')],
            ),
        ],
      ),
    );
  }
}
