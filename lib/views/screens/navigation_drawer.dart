import 'package:flutter/material.dart';

class NavigationDrawerDemo extends StatefulWidget {
  const NavigationDrawerDemo({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerDemo> createState() => _NavigationDrawerDemoState();
}

class _NavigationDrawerDemoState extends State<NavigationDrawerDemo> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () {
              // Open the drawer
              Scaffold.of(context).openDrawer();
            },
            child: Text('Open Drawer'),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }

}
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Custom Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Handle drawer item tap for Home
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle drawer item tap for Settings
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTile widgets for additional drawer items
        ],
      ),
    );
  }}