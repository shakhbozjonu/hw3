import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final String data;

  const SettingPage({super.key, required this.data});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('This is Settings page with data: ${widget.data}'),
      ),
    );
  }
}
