import 'dart:ui';

import 'package:dev/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final Function() onCLickedSignIn;

  const SignUp({Key? key, required this.onCLickedSignIn}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGFydHl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Welcome Back',
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 0.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                child: Text('Email'),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
            child: TextFormField(
              controller: emailcontroller,
              textInputAction: TextInputAction.next,
              autocorrect: true,
              textCapitalization: TextCapitalization.words,
              enableSuggestions: false,
              validator: (value) {},
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Example@.com',
                hintStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSaved: (username) {},
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 20, 10, 0),
                child: Text('Password'),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
            child: TextFormField(
              controller: passwordcontroller,
              textInputAction: TextInputAction.next,
              autocorrect: true,
              textCapitalization: TextCapitalization.words,
              enableSuggestions: false,
              validator: (value) {},
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: '******',
                hintStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSaved: (username) {},
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 70, 0),
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.white,
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Sign-Up',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: signUp,
            ),
          ),
          SizedBox(height: 24.0),
          RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Already have an account?  ',
                  children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onCLickedSignIn,
                    text: 'Log in',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).colorScheme.secondary))
              ]))
        ],
      ));
  Future signUp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
