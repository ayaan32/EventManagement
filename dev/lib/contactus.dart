import 'dart:ui';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Text('Ph no : +91 9943256222',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            ),
            SizedBox(height: 40),
            Text('Email : threepren@gmail.com',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ],
        ),
      )),
    );
  }
}
