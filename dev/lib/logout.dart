import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'signed in as',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              user.email!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 30.0),
        ElevatedButton(
          onPressed: () => FirebaseAuth.instance.signOut(),
          child: Text('Logout'),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.black87)),
        )
      ],
    )));
  }
}
