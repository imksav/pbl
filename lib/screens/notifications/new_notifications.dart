import 'package:flutter/material.dart';

class ListOfNewNotifications extends StatefulWidget {
  const ListOfNewNotifications({Key? key}) : super(key: key);

  @override
  _ListOfNewNotificationsState createState() => _ListOfNewNotificationsState();
}

class _ListOfNewNotificationsState extends State<ListOfNewNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Notification $index"),
              );
            }),
      ),
    );
  }
}
