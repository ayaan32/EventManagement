import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGFydHl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                      child: Text('Login',
                          style: TextStyle(
                            fontSize: 28,
                            letterSpacing: 1.25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 20, 0, 0),
                      child: Text('Email'),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
                  child: TextFormField(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      minimumSize: Size.fromHeight(50),
                      backgroundColor: Colors.white,
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
