import 'package:flutter/material.dart';

class Paypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay here'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
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
        ],
      ),
    );
  }
}
