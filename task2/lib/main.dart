import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String _title = "App title";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const Color _backgroundColor = Color.fromRGBO(60, 66, 86, 1);
  static final _bottomMenuSelectedItemColor = Colors.amber[800];
  static const _bottomMenuItemColor = Color.fromRGBO(190, 190, 190, 1);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: _backgroundColor,
              title: Text("widget.title"),
            ),
            endDrawer: Drawer(
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
            ),
            body: const Center(
              child: TabBarView(
                children: _widgetOptions,
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: TabBar(
                unselectedLabelColor: _bottomMenuItemColor,
                labelColor: _bottomMenuSelectedItemColor,
                indicatorColor: _bottomMenuSelectedItemColor,
                onTap: (index) {},
                tabs: const [
                  Tab(icon: Icon(Icons.book)),
                  Tab(icon: Icon(Icons.calendar_month_sharp)),
                  Tab(icon: Icon(Icons.drive_folder_upload)),
                  Tab(icon: Icon(Icons.person)),
                ],
              ),
            )));
    // return DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //       appBar: AppBar(
    //         title: const Text('BottomNavigationBar Sample'),
    //         backgroundColor: _backgroundColor,
    //       ),

    //       body: const Center(
    //           child: TabBarView(
    //               children:
    //                   _widgetOptions) // _widgetOptions.elementAt(_selectedIndex),
    //           ),
    //       bottomNavigationBar: const TabBar(
    //         tabs: [
    //           Tab(icon: Icon(Icons.directions_car)),
    //           Tab(icon: Icon(Icons.directions_transit)),
    //           Tab(icon: Icon(Icons.directions_bike)),
    //           Tab(icon: Icon(Icons.directions_bike)),
    //         ],
    //       )),
    //   // bottomNavigationBar: BottomNavigationBar(
    //   //   type: BottomNavigationBarType.fixed,
    //   //   showSelectedLabels: false,
    //   //   showUnselectedLabels: false,
    //   //   items: const <BottomNavigationBarItem>[
    //   //     BottomNavigationBarItem(
    //   //       icon: Icon(Icons.book),
    //   //       label: '',
    //   //       // backgroundColor: Colors.black,
    //   //     ),
    //   //     BottomNavigationBarItem(
    //   //       icon: Icon(
    //   //         Icons.calendar_month_sharp,
    //   //         size: 36,
    //   //       ),
    //   //       label: '',
    //   //       //backgroundColor: Colors.black,
    //   //     ),
    //   //     BottomNavigationBarItem(
    //   //       icon: Icon(Icons.drive_folder_upload, size: 36),
    //   //       label: '',
    //   //       // backgroundColor: Colors.purple,
    //   //     ),
    //   //     BottomNavigationBarItem(
    //   //       icon: Icon(Icons.person),
    //   //       label: '______',
    //   //       //backgroundColor: Colors.black,
    //   //     ),
    //   //   ],
    //   //   currentIndex: _selectedIndex,
    //   //   backgroundColor: _backgroundColor,
    //   //   unselectedItemColor: _bottomMenuItemColor,
    //   //   selectedItemColor: _bottomMenuSelectedItemColor,
    //   //   onTap: _onItemTapped,
    //   // ),
    // );
  }
}
