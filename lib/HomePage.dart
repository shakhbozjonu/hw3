import 'package:flutter/material.dart';
import 'package:hw3/Settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is Home Page'),
            ElevatedButton(
              child: Text('Go to Settings'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingPage(data: 'I sent this from Home Page!'),
                  ),
                );
              },
            ),
            // Add your other widgets here
          ],
        ),
      ),
    );
  }
}
