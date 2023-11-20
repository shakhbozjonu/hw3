import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is Account page'),
            SizedBox(height: 20),
            Text('User Name: John Doe'),
            SizedBox(height: 20),
            Text('Email: johndoe@example.com'),
            SizedBox(height: 20),
            Text('Phone: +1234567890'),
            SizedBox(height: 20),
            Text('Address: 123, ABC Street, XYZ City'),
          ],
        ),
      ),
    );
  }
}
