import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pbl/screens/notifications_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // initatize variables
  int _selectedIndex = 0;
  // initalize the pages
  static const List<Widget> _pages = <Widget>[
    Icon(Icons.home, size: 150.0, color: Colors.white),
    Icon(Icons.message, size: 150.0, color: Colors.white),
    NotificationPage(),
    // Icon(Icons.person, size: 150.0, color: Colors.white),
    TextField(
      decoration: InputDecoration(border: OutlineInputBorder()),
    ),
  ];
  // methods
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 25.0),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 16.0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: Colors.blueAccent,
        elevation: 2.0,
        iconSize: 20.0,
        mouseCursor: SystemMouseCursors.grab,
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
        // child: IndexedStack(
        //   index: _selectedIndex,
        //   children: _pages,
        // ),
      ),
    );
  }
}
