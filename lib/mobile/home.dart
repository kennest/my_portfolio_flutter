import 'package:flutter/material.dart';
import 'package:my_portfolio/components/sidebar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: null),
      body: Center(child: Text('Mobile Home')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: SideBar()
      ),
    );
  }
}
