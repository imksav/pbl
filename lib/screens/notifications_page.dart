import 'package:flutter/material.dart';
import 'package:pbl/screens/notifications/new_notifications.dart';
import 'package:pbl/screens/notifications/old_notifications.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(tabs: [
                Tab(
                  text: "New Notifications",
                ),
                Tab(
                  text: "Old Notifications",
                ),
              ])
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListOfNewNotifications(),
            ListOfOldNotifications(),
          ],
        ),
      ),
    );
  }
}
