import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Mail'),
            subtitle: Text('You have 78894 unread messages'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
            subtitle: Text('Your event is scheduled for tomorrow'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.drive_eta),
            title: Text('UZUM'),
            subtitle: Text('1+1 на Pepsi! Успейте сегодня. 11.11 в Uzum Market '
                          'https://m.2u.uz/1+1'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('11313'),
            subtitle: Text('oplata 1700.00 UZS; OOO AVTOMATLASHTIRIL; Dostupno: 6122.41 UZS'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text('System'),
            subtitle: Text('Update the software'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

