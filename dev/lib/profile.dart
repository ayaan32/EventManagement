import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                      hintText: 'Email',
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
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 70, 100),
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    minimumSize: Size.fromHeight(50),
                    backgroundColor: Colors.black,
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
