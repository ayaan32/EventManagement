import 'dart:ui';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text('Have something on your mind?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(height: 10),
                  Text('Let us know!',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: (Colors.grey[500])!,
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1.8),
                              BoxShadow(
                                  color: (Colors.white),
                                  offset: Offset(-4, -4),
                                  blurRadius: 15,
                                  spreadRadius: 1.8),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.phone,
                              size: 30,
                            ),
                            Text(
                              '+91 9902355227',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: (Colors.grey[500])!,
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1.8),
                              BoxShadow(
                                  color: (Colors.white),
                                  offset: Offset(-4, -4),
                                  blurRadius: 15,
                                  spreadRadius: 1.8),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              size: 30,
                            ),
                            Text(
                              'admin@gmail.com',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[300]!),
                          boxShadow: [
                            BoxShadow(
                                color: (Colors.grey[500])!,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                            BoxShadow(
                                color: (Colors.white),
                                offset: Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                          ]),
                      child: TextFormField(
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: false,
                        validator: (value) {},
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Your Name',
                          hintStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey[300],
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[300]!),
                          boxShadow: [
                            BoxShadow(
                                color: (Colors.grey[500])!,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                            BoxShadow(
                                color: (Colors.white),
                                offset: Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                          ]),
                      child: TextFormField(
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: false,
                        validator: (value) {},
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Mail',
                          hintStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey[300],
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[300]!),
                          boxShadow: [
                            BoxShadow(
                                color: (Colors.grey[500])!,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                            BoxShadow(
                                color: (Colors.white),
                                offset: Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                          ]),
                      child: TextFormField(
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: false,
                        validator: (value) {},
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Phone',
                          hintStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey[300],
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[300]!),
                          boxShadow: [
                            BoxShadow(
                                color: (Colors.grey[500])!,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                            BoxShadow(
                                color: (Colors.white),
                                offset: Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1.8),
                          ]),
                      child: TextFormField(
                        expands: true,
                        maxLines: null,
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: false,
                        validator: (value) {},
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Type your message here!',
                          hintStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey[300],
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
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 70, 100),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            width: 150, height: 50),
                        child: ElevatedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            minimumSize: Size.fromHeight(50),
                            backgroundColor: Colors.black,
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Send Message',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 200),
                ],
              ),
            ),
          )),
    );
  }
}
