import 'dart:ui';

import 'package:dev/profile.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

/// This is the private State class that goes with Navbar.
class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  String appbarTitleString = "Events";
  var appBarTitleText = new Text("Home");
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Events',
      style: optionStyle,
    ),
    Profile(),
    Text(
      'Index 2: Refer and earn',
      style: optionStyle,
    ),
    Text(
      'Index 3: Contact us',
      style: optionStyle,
    ),
    Text(
      'Index 4: Logout',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        appbarTitleString = "Profile";
        appBarTitleText = new Text(appbarTitleString);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitleText,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event_rounded),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Refer and Earn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Conatct us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
