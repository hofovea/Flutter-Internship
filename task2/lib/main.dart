import 'package:driver_lessons_app/models/lesson/lesson.dart';
import 'package:driver_lessons_app/widgets/bottom_tab_bar.dart';
import 'package:driver_lessons_app/widgets/lesson_tile.dart';
import 'package:driver_lessons_app/widgets/options_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "_title",
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const int _selectedIndex = 0;
  static List<Lesson> lessons = [
    const Lesson(
        title: "tt",
        level: "begginer",
        levelIndicator: 0.33,
        price: 23,
        content: "csscs",
        iconName: "")
  ];
  static const Color _backgroundColor = Color.fromRGBO(60, 66, 86, 1);
  static final _bottomMenuSelectedItemColor = Colors.amber[800];
  static const _bottomMenuItemColor = Color.fromRGBO(190, 190, 190, 1);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    RefreshIndicator(
      onRefresh: () async {
        
      },
      child: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return LessonTile(lesson: lessons[index]);
        },
      ),
    ),
    const Text(
      'Not implemented',
      style: optionStyle,
    ),
    const Text(
      'Not implemented',
      style: optionStyle,
    ),
    const Text(
      'Not implemented',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      //_selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: _backgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: _backgroundColor,
              title: Text("widget.title"),
            ),
            endDrawer: const OptionsDrawer(backgroundColor: _backgroundColor),
            body: Center(
              child: TabBarView(
                children: _widgetOptions,
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: BottomTabBar(
                  bottomMenuItemColor: _bottomMenuItemColor,
                  bottomMenuSelectedItemColor: _bottomMenuSelectedItemColor),
            )));
  }
}
