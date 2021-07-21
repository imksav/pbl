import 'package:flutter/material.dart';

class ListOfOldNotifications extends StatefulWidget {
  const ListOfOldNotifications({Key? key}) : super(key: key);

  @override
  _ListOfOldNotificationsState createState() => _ListOfOldNotificationsState();
}

class _ListOfOldNotificationsState extends State<ListOfOldNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
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
