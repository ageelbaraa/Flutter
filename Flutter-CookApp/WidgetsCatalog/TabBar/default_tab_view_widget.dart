import 'package:flutter/material.dart';

class DefaultTabControllerPage extends StatelessWidget {
  final List<Tab> _tabs = [
    Tab(text: 'Tab 1', icon: Icon(Icons.list)),
    Tab(text: 'Tab 2', icon: Icon(Icons.map))
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: _tabs),
        ),
        body: TabBarView(
          children: _tabs.map((tab) {
            return Center(
              child: Text(tab.text),
            );
          }).toList(),
        ),
      ),
    );
  }
}
