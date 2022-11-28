import 'package:flutter/material.dart';

class OptionsDrawer extends StatelessWidget {
  const OptionsDrawer({
    Key? key,
    required Color backgroundColor,
  }) : _backgroundColor = backgroundColor, super(key: key);

  final Color _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: _backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}