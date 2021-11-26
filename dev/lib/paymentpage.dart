import 'dart:ui';

import 'package:flutter/material.dart';

class Paypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Name',
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Address',
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Number of people(including yourself)',
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Address',
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Contact',
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Address',
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  validator: (value) {},
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Emergency Contact',
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
                  dropdownlist(),
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

class dropdownlist extends StatefulWidget {
  const dropdownlist({Key? key}) : super(key: key);

  @override
  State<dropdownlist> createState() => _dropdownlistState();
}

/// This is the private State class that goes with dropdownlist.
class _dropdownlistState extends State<dropdownlist> {
  String dropdownValue = 'Insta';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_rounded),
        iconSize: 20,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Insta', 'Facebook', 'Ads', 'friends', 'Posters']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
