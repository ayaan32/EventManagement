import 'package:flutter/material.dart';

class Dropdownlist extends StatefulWidget {
  const Dropdownlist({Key? key}) : super(key: key);

  @override
  State<Dropdownlist> createState() => _DropdownlistState();
}

/// This is the private State class that goes with dropdownlist.
class _DropdownlistState extends State<Dropdownlist> {
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
