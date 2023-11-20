import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<Map<String, dynamic>> contacts = [
    {'name': 'Anton', 'phone': '+474747483'},
    {'name': 'Jamshid', 'phone': '+092939488'},
    {'name': 'Vlad', 'phone': '+19494944'},
    {'name': 'Masha', 'phone': '+5949944'},
    {'name': 'Aziz', 'phone': '+273748488'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person, size: 50),
            title: Text(contacts[index]['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text(contacts[index]['phone'], style: TextStyle(fontSize: 18)),
          );
        },
      ),
    );
  }
}
