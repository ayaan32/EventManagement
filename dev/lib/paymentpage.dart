import 'dart:ui';
import 'package:dev/widgets/dropdownlist.dart';
import 'package:flutter/material.dart';

class Paypage extends StatefulWidget {
  @override
  _PaypageState createState() => _PaypageState();
}

class _PaypageState extends State<Paypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Pay here'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      hintText: 'Name',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
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
                  child: TextFormField(
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {},
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Address',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
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
                  child: TextFormField(
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {},
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText:
                          'Number of people to attend(including yourself)',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
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
                  child: TextFormField(
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {},
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Contact',
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
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
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
                  child: TextFormField(
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {},
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Emergency Contact',
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      'How did you know of us?',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 30),
                  Dropdownlist(),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 70, 100),
                child: Center(
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 50),
                    child: ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        minimumSize: Size.fromHeight(50),
                        backgroundColor: Colors.black,
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Pay',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
