import 'package:flutter/material.dart';

class ScaffoldBottomNavWidget extends StatefulWidget {
  @override
  _ScaffoldBottomNavWidgetState createState() => _ScaffoldBottomNavWidgetState();
}

class _ScaffoldBottomNavWidgetState extends State<ScaffoldBottomNavWidget> {
  int selectedNavItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Widget - Title'),
      ),
      body: Center(
        child: Text('Scaffold Widget - Body'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedNavItem,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.lightBlue,
        fixedColor: Colors.amber,
        onTap: (index){
          setState(() {
            selectedNavItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Cake',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
