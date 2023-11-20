import 'package:flutter/material.dart';
import 'package:hw3/AccountPage.dart';
import 'package:hw3/ContactsPage.dart';
import 'package:hw3/HomePage.dart';
import 'package:hw3/NotificationsPage.dart';
import 'package:hw3/Settings.dart';


void main()
{
  runApp
    (
    MyApp()
  );
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    home: MyBottomNavigationBar(),
    );
  }
}


class MyBottomNavigationBar extends StatefulWidget {


  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex=0;
  final List<Widget> _children=[
    HomePage(),
    SettingPage(data: 'I am sending this from Main Page!'),
    ContactsPage(),
    NotificationsPage(),
    AccountPage(),

  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex=index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar
        (
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem
            (
            icon: new Icon(Icons.home),
            label:'HOME',
          ),

          BottomNavigationBarItem
            (
            icon: new Icon(Icons.settings),
            label:'SETTINGS',
          ),

          BottomNavigationBarItem
            (
            icon: new Icon(Icons.contacts),
            label:'CONTACTS',
          ),

          BottomNavigationBarItem
            (
            icon: new Icon(Icons.notifications),
            label:'ALERTS',
          ),

          BottomNavigationBarItem
            (
            icon: new Icon(Icons.account_circle_rounded),
            label:'PROFILE',
          ),

        ],
      ),
    );
  }
}


